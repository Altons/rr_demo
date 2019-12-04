% include('header.tpl', title='Page Title')


<div class="container">
<h1>Products </h1>
<div class="col-sm-12 col-md-10">
         <div class="row d-flex">
%for row in rows:
        <div id="product_{{row[0]}}" class="d-flex w-100 col-12 col-md-4 col-xl-3 col-sm-6 product-list-item mb-4">
            <div class="card mb-4 box-shadow">
                <div class="card-header font-weight-bold">
                    Engine Part
                </div>
                <div class="card-body d-flex flex-column ">
                    <h7 class="card-subtitle">{{row[1]}}</h7>
                    <p class="card-text"></p>
                    <a class="mt-auto btn btn-sm btn-block btn-primary" href="/product/{{row[0]}}" role="button">View details &raquo;</a>
                </div>
                <div class="card-footer">
                    {{row[3]}}
                </div>
            </div>
        </div>

%end
</div>
</div>
</div>



% include('footer.tpl')
