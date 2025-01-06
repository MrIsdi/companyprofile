## Review 2025-01-08
oleh : [Fikar](https://github.com/superpikar/)

Berikut ini beberapa review :
- Tentang variable `{{ entry }}`
  - variable `entry` available ketika mengakses url sebuah `Section`
  - variable `category` available ketika mengakses url sebuah `Category`
  - sehingga :
    - pada section `Home`, karena sudah diset templatenya `index.twig` :
      - variable `entry` sudah ready
      - tidak perlu query lagi `{% set entry = craft.entries.section()....one() %}`
    - pada section `About`, karena sudah diset templatenya `about/_entry.twig` :
      - variable `entry` sudah ready
      - tidak perlu query lagi `{% set entry = craft.entries.section()....one() %}`
- Tentang `People`
  - List `People` pada `pageBuilder` sudah betul
  - untuk fieldnya, agar lebih mudah diidentifikasi baiknya menggunakan konvensi : 
    - `title` = field yang digunakan sebagai identitas utama, pada `People` diisi nama. pada `Post` diisi judul postingan 
    - `jobtitle` / `peopleStatus` = field untuk jabatan
  - juga karena title biasanya otomatis digenerate jadi `slug`
  - selain itu, misal di masa depan People itu berganti jabatan maka field `title` dan `slug`nya tidak berubah
- Tentang `Page Builder` (matrix block)
  - konsep dari matrix block :
    - konten didefinisikan di admin panel
    - sedangkan templatenya akan konsisten outputnya di semua halaman yang memiliki field `pageBuilder`
    - sehingga rendering field `pageBuilder` harus dibuat component, karena reusable di semua laman. contoh implementasinya :
    - daripada :
      ```
      // render di /index.twig
      {% for home in entry.pageBuilder.all() %}
        {% if home.type.handle == 'layoutHome' %}
        {% endif %}
        {% if home.type.handle == 'layoutCount' %}
        {% endif %}
        {% if home.type.handle == 'layoutAbout' %}
        {% endif %}
        {% if home.type.handle == 'layoutProduct' %}
        {% endif %}
        {% if home.type.handle == 'layoutContact' %}
        {% endif %}
      {% endfor %}
          
      // render di /about/_entry.twig
      {% for about in entry.pageBuilder.all() %}
        {% if about.type.handle == 'layoutAboutUs' %}
        {% endif %}
        {% if about.type.handle == 'layoutPlatform' %}
        {% endif %}
        {% if about.type.handle == 'layoutJourney' %}
        {% endif %}
        {% if about.type.handle == 'layoutFacilities' %}
        {% endif %}
        {% if about.type.handle == 'layoutGallery' %}
        {% endif %}
        {% if about.type.handle == 'layoutManagement' %}
        {% endif %}
      {% endfor %}
      ```
    - sebaiknya dijadikan reusable, dan variable name nya diseragamkan.
      ```
      // render di /_components/page_builder.twig
      {% set entry = entry ?? [] %}
      {% for block in entry.pageBuilder.all() %}
        {% set type = block.type.handle %}
        {% if type == 'layoutHome' %}
        {% elseif type == 'layoutCount' %}
        {% elseif type == 'layoutAbout' %}
        {% elseif type == 'layoutProduct' %}
        {% elseif type == 'layoutContact' %}
        {% elseif type == 'layoutAboutUs' %}
        {% elseif type == 'layoutPlatform' %}
        {% elseif type == 'layoutJourney' %}
        {% elseif type == 'layoutFacilities' %}
        {% elseif type == 'layoutGallery' %}
        {% elseif type == 'layoutManagement' %}
        {% endif %}
      {% endfor %}
          
      // render di /index.twig
      {% include "_components/page_builder.twig" with {
        entry: entry,
      } %}
          
      // render di /page/_entry.twig
      {% include "_components/page_builder.twig" with {
        entry: entry,
      } %}
  - untuk block `Layout About Us`, karena maksudnya adalah judul dengan beberapa list items di bawahnya, maka fields di blocknya lebih baik seperti ini. 
    - tidak perlu field About 1, About 2, About 3 
    - cukup 1 field yang tipenya matrix : 
      - `Title` (plain text)
      - `List Image and Paragraph` (matrix) isinya entry type `Block Image and Paragraph`
  - untuk block yang hanya butuh field2 simple, bisa menggunakan table saja. misal pada block `Layout Count` di dalamnya ada : 
    - field `Count Stats` (table) isinya field2 `icon, total, caption`
- Tentang Navigation
  - jika hanya butuh navigasi simple, tidak perlu menggunakan section. cukup twig array misal  
    ```twig
    {% set navs = [ 
        { title: 'Home', url: '/' }, 
        { title: 'About', url: '/about' } 
    ] %}
    ```
    
## references : 
- https://craftcms.com/docs/5.x/reference/element-types/entries.html#querying-entries
   
  