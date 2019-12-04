% include('header.tpl')

    <main role="main" class="container">

      <div class="starter-template">
        <h1>Python App demo </h1>
        <p class="lead">This is a demo showcasing different areas of data engineering using Python.</p>
      </div>

    </main><!-- /.container -->

          <div class="container">
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-md-4">
            <h2>ETL</h2>
            <ul class="list-styled">
              <li>Scrape content from website</li>
              <li>Read csv file</li>
              <li>Copy database to destination</li>
              <li>Define workflow with Airflow</li>
            <ul>
          </div>
          <div class="col-md-4">
            <h2>Web</h2>
            <ul class="list-styled">
              <li>Bottle.py framework</li>
              <li>Display data in DB</li>
              <li>Expose API</li>
            <ul>
          </div>
          <div class="col-md-4">
            <h2>DB</h2>
            <ul class="list-styled">
              <li>SQLite</li>
            <ul>
          </div>
        </div>

% include('footer.tpl')
