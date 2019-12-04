% include('header.tpl')

<div class="container">
<h1> Product Detail </h1>
<br />
    <div class="row">
        <div class="col-xs-5" style="border:0px solid gray">
            <!-- Datos del vendedor y titulo del producto -->
            <h3>{{product[1]}} <span></span></h3>
            <h4> Category: <small>Engine Part</small></h4>
            <h5 style="color:#6C757D">Sold by ACME  </h5>
            <h5 style="color:#6C757D">Availability: {{product[4]}} items </h5>

            <div style="width:100%;border-top:1px solid silver">
                <p style="padding:15px;">
                    <small>
                        {{product[2]}}
                    </small>
                </p>

            </div>


            <div>
                <h6 class="title-price"><small>Price:</small></h6>
                <h3 style="margin-top:0px;"> {{product[3]}}<small>+ VAT </small></h3>
                <a class="mt-auto btn btn-sm mr-3 btn-primary" href="#" role="button">Add to Cart</a>
                
                
            </div>
            <div>
            <a class="mt-auto btn mr-3 btn-sm btn-secondary" href="/products" role="button">Back</a>
            </div>

        </div>

    </div>
        <p>
      
      </p>
</div>

% include('footer.tpl')