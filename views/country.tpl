% include('header.tpl')

<div class="container">
    <h4>Atlantis API</h4>
    <hr>
<p>    The Atlantis API is organized around REST. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs.</p>

<h5>Country</h5>

<p>This is an object representing Airlines by Counrty You can retrieve it to see the all airlines for a given country.
</p>
 <p>Example: </p>
  <p><a href="/api/country/russia" class="card-link">Russia </a>  </p>
  <p><a href="/api/country/canada" class="card-link">Canada </a>  </p>
  <p><a href="/api/country/mexico" class="card-link">Mexico </a>  </p>
</div>

% include('footer.tpl')