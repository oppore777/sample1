<!--
  Copyright (C) 2017 NTT DATA Corporation.
-->

<iv-registerfiles>
  <yield to="iv-edit">
      <div id="edit-form" class="card-body card-yscroll">
          <div class="bs-component">
              <fieldset>
                <!-- 船積情報 -->
                <p}>
                  <i1-8n>Shipment Info</i1-8n>
                </p>
                <div class="offset-sm-1 col-sm-10">
                  <div class="pretty p-default form-checkbox">
                    <input type="checkbox" class="form-check-input" id="closeRegist" ref="closeRegist" checked={data.closeRegist ? "checked" : ""} value="">
                    <div class="state p-success">
                      <label class="state p-success form-check-label" for="closeRegist" style="font-size:small;">
                        <i1-8n style="color: #333333;">Partial Shipment Not ALLOWED or Final Shipment</i1-8n>
                      </label>
                    </div>
                  </div>
                </div>

                <!-- 区切り線 -->
                <hr style="border-top: 1px dashed #bbb;">
                <p>
                  <i1-8n>IV Info</i1-8n>
                </p>

                <!-- IV情報 -->
                <br>

                <div class="form-group row text-right required">
                  <label for="inputShipperCode" class="col-control-form col-sm-2">
                    <i1-8n>Shipper Code</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputShipperCode" required="required" disabled="disabled" value="{data.shipperCode}"
                      ref="shipperCode">
                  </div>
                </div>

                <div class="form-group row text-right required">
                  <label for="inputIVNo" class="col-control-form col-sm-2">
                    <i1-8n>I/V No.</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputIVNo" required="required" value="{data.iVNo}" ref="iVNo">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputIVDate" class="col-control-form col-sm-2">
                    <i1-8n>I/V Date</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input flatpickr" id="inputIVDate" value="{data.iVDate}" ref="iVDate">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputShipper" class="col-control-form col-sm-2">
                    <i1-8n>Shipper</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <textarea class="form-control input" id="inputShipper" rows="3" value="{data.shipper}" ref="shipper"></textarea>
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputConsignee" class="col-control-form col-sm-2">
                    <i1-8n>Consignee</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <textarea class="form-control input" id="inputConsignee" rows="3"
                      value="{data.consignee}"
                      cst-def="{data.applicant}"
                      ref="consignee"></textarea>
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputContractNo" class="col-control-form col-sm-2">
                    <i1-8n>Contract No.</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputContractNo"
                      readonly
                      value="{data.contractNo}"
                      ref="contractNo">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputPONo" class="col-control-form col-sm-2">
                    <i1-8n>PO No.</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputPONo" readonly value="{data.pONo}" ref="pONo">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputPaymentTerm" class="col-control-form col-sm-2">
                    <i1-8n>Payment Term</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputPaymentTerm"
                      value="{data.paymentTerm}"
                      def="{data.payment}"
                      ref="paymentTerm">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputOceanVessel" class="col-control-form col-sm-2">
                    <i1-8n>Ocean Vessel</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputOceanVessel" value="{data.oceanVessel}" ref="oceanVessel">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputOnorAbout" class="col-control-form col-sm-2">
                    <i1-8n>On or About</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input flatpickr" id="inputOnorAbout" value="{data.onorAbout}" ref="onorAbout">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputPortofLoading" class="col-control-form col-sm-2">
                    <i1-8n>Port of Loading</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputPortofLoading"
                      value="{data.portofLoading}"
                      cst-def="{data.portofLoadingAirportofDeparture}"
                      ref="portofLoading">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputViaPort" class="col-control-form col-sm-2">
                    <i1-8n>Via Port</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputViaPort" value="{data.viaPort}" ref="viaPort">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputPortofDischarge" class="col-control-form col-sm-2">
                    <i1-8n>Port of Discharge</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputPortofDischarge" value="{data.portofDischarge}" ref="portofDischarge">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputFinalDestination" class="col-control-form col-sm-2">
                    <i1-8n>Final Destination</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputFinalDestination" value="{data.finalDestination}" ref="finalDestination">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputGoodsName" class="col-control-form col-sm-2">
                    <i1-8n>Goods Name</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputGoodsName" value="{data.goodsName}" ref="goodsName">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputIncoterms" class="col-control-form col-sm-2">
                    <i1-8n>Incoterms-IV</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="ipnutIncoterms" value="{data.incoterms}" ref="incoterms">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputplaceofTakinginChargeDispatchfromPlaceofReceipt" class="col-control-form col-sm-2">
                    <i1-8n>Place of Trade Terms</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="ipnutplaceofTakinginChargeDispatchfromPlaceofReceipt" value="{data.placeofTakinginChargeDispatchfromPlaceofReceipt}"
                      ref="placeofTakinginChargeDispatchfromPlaceofReceipt">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputOrigin" class="col-control-form col-sm-2">
                    <i1-8n>Origin</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputOrigin" value="{data.origin}" ref="origin">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputremarks" class="col-control-form col-sm-2">
                    <i1-8n>Remarks-IV</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <textarea class="form-control input" id="inputremarks" rows="3" value="{data.remarks}" ref="remarks"></textarea>
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputMarksNos" class="col-control-form col-sm-2">
                    <i1-8n>Marks and Nos.</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <textarea class="form-control input" id="inputMarksNos" rows="3"
                      value="{data.marksNos}"
                      cst-def="{marksandNumbers}"
                      ref="marksNos"></textarea>
                  </div>
                </div>

                <!-- 繰り返し項目　商品明細 -->
                <div class="form-group row text-right">
                  <label class="col-control-form col-sm-2" for="iVDetails">
                    <i1-8n>I/V Details</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <repeat
                      id="iVDetails"
                      items={data.iVDetails}
                      labels={["Description of Goods", "Country of Origin of Detail", "Product Quantity",
                      "Product Quantity Unit", "Quantity per Carton", "Carton", "Carton Unit", "Currency Code", "Unit Price", "Amount-IV"]}
                      keys={["descriptionofGoods", "countryofOriginofDetail", "productQuantity", "productQuantityUnit", "quantityperCarton", "carton",
                      "cartonUnit", "currencyCode", "unitPrice", "amount"]}
                      ref="iVDetails"></repeat>
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputtotalQuantity" class="col-control-form col-sm-2">
                    <i1-8n>Total Quantity</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputtotalQuantity" value="{data.totalQuantity}" ref="totalQuantity">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputtotalQuantityUnit" class="col-control-form col-sm-2">
                    <i1-8n>Total Quantity Unit</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputtotalQuantityUnit" value="{data.totalQuantityUnit}" ref="totalQuantityUnit">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputtotalAmountCurrencyCode" class="col-control-form col-sm-2">
                    <i1-8n>Total Amount Currency Code</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputtotalAmountCurrencyCode" value="{data.totalAmountCurrencyCode}"
                      ref="totalAmountCurrencyCode">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputTotalAmount" class="col-control-form col-sm-2">
                    <i1-8n>Total Amount</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputTotalAmount" value="{data.totalAmount}" ref="totalAmount">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputGrossWeight" class="col-control-form col-sm-2">
                    <i1-8n>Gross Weight</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputGrossWeight" value="{data.grossWeight}" ref="grossWeight">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputgrossWeightUnit" class="col-control-form col-sm-2">
                    <i1-8n>Gross Weight Unit</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputgrossWeightUnit" value="{data.grossWeightUnit}" ref="grossWeightUnit">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputNetWeight" class="col-control-form col-sm-2">
                    <i1-8n>Net Weight</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputNetWeight"
                      value="{data.netWeight}"
                      cst-def="{data.totalNetWeight}"
                      ref="netWeight">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputnetWeightUnit" class="col-control-form col-sm-2">
                    <i1-8n>Net Weight Unit</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputnetWeightUnit"
                      value="{data.netWeightUnit}"
                      cst-def="{totalNetWeightUnit}"
                      ref="netWeightUnit">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputGrossVolume" class="col-control-form col-sm-2">
                    <i1-8n>Gross Volume</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputGrossVolume"
                      value="{data.grossVolume}"
                      cst-def="{totalMeasurement}"
                      ref="grossVolume">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputgrossVolumeUnit" class="col-control-form col-sm-2">
                    <i1-8n>Gross Volume Unit</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputgrossVolumeUnit"
                      value="{data.grossVolumeUnit}"
                      cst-def="{totalMeasurementUnit}"
                      ref="grossVolumeUnit">
                  </div>
                </div>

                <div class="form-group row text-right">
                  <label for="inputSignature" class="col-control-form col-sm-2">
                    <i1-8n>Signature</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control input" id="inputSignature" value="{data.signature}" ref="signature">
                  </div>
                </div>

                <!-- 繰り返し項目　関連書類 -->
                <div class="form-group row text-right">
                  <label class="col-control-form col-sm-2" for="relateddocuments">
                    <i1-8n>Related documents</i1-8n>
                  </label>
                  <div class="col-sm-10">
                    <repeat
                      id="relateddocuments"
                      items={data.relateddocuments}
                      labels="{["Related documents No. ID", "Related documents No.", "Related documents No. of Date"]}",
                      keys="{["relateddocumentsNoID", "relateddocumentsNo", "relateddocumentsNoofDate"]}",
                      types="{["text", "text", "date"]}"
                      ref="relateddocuments"></repeat>
                  </div>
                </div>

                <!-- //kita -->
                <!-- 区切り線 -->
                <!-- ファイル添付 -->
                <hr style="border-top: 1px dashed #bbb;">

                <p>
                  <i1-8n>IV Add Files</i1-8n>
                </p>
                <div id="s3PostFile" class="form-group"></div>
                <div class="input-group">
                  <label class="input-group-btn">
                    <span class="btn btn-sm btn-outline-secondary">
                      <i1-8n>Add File</i1-8n>
                      <input type="file" name="files" id="addFile" style="display:none">
                    </span>
                  </label>
                </div>
              </fieldset>



        </div>
      </div>
    </div>
  </div>
  </yield>
  <script>
    let self = this;
    let s3PostResArr = [];
    let fileCnt = 0;
    let innertag = "";
    this.mixin('obs');
    this.mixin('swal')
    self.data = opts.data;
    self.data.shipperCode = opts.data.username

    this.obs.on("iv-register-reflect", (obj) => {
      let param = {
        api: 'iv-reflect',
        condition: {
          sc: obj.params.scDocId,
          lc: obj.params.lcDocId
        }
      }
      self.data = {}
      self.update()
      sendFunc.post('/api/reflect', param, (code, json, msg) => {
        if (code == 0) {
          self.data = json['value']['document'].content
          self.data.shipperCode = opts.data.username
          self.update()
        } else {
          let error = {code:'alert ', type:'alert-danger', message: msg.text}
          this.obs.trigger("guidanceChanged", error)
        }
      })
    })

　　this.on('mount', () => {
      $('#addFile').on('change', (e) => {
        e.preventDefault()
        var formData = new FormData();
        var postfile = $('#addFile');

        if(postfile.val().length == 0){
          return false;
        }

        formData.append(postfile.attr('name'),postfile.prop("files")[0]);
        $("#submit-form").LoadingOverlay("show");
        postfile.val("")

        try{
          axiosPostFile(formData,(code, json, msg) => {
            if (code == 0) {
              
              s3PostResArr.push({"region":json.region,"bucket":json.bucket,"key":json.key,"originalname":json.originalname});
              innertag = `${innertag}
                  <span id="addFile_${fileCnt}">
                  <i1-8n>${s3PostResArr[fileCnt].originalname}</i1-8n><br>
                  <input type="hidden" class="form-control" id="files[${fileCnt}][region]" value="${s3PostResArr[fileCnt].region}">
                  <input type="hidden" class="form-control" id="files[${fileCnt}][bucket]" value="${s3PostResArr[fileCnt].bucket}">
                  <input type="hidden" class="form-control" id="files[${fileCnt}][key]" value="${s3PostResArr[fileCnt].key}">
                  <input type="hidden" class="form-control" id="files[${fileCnt}][originalname]" value="${s3PostResArr[fileCnt].originalname}">
                  </span>`
              /*for (let i in s3PostResArr){
                innertag = `${innertag}
                  <span id="addFile_${i}">
                  <i1-8n>${s3PostResArr[i].originalname}</i1-8n><br>
                  <input type="hidden" class="form-control" id="files[${i}][region]" value="${s3PostResArr[i].region}">
                  <input type="hidden" class="form-control" id="files[${i}][bucket]" value="${s3PostResArr[i].bucket}">
                  <input type="hidden" class="form-control" id="files[${i}][key]" value="${s3PostResArr[i].key}">
                  <input type="hidden" class="form-control" id="files[${i}][originalname]" value="${s3PostResArr[i].originalname}">
                  </span>`
              }*/
               var s3Post = document.getElementById("s3PostFile");
               s3Post.innerHTML = innertag; 
               fileCnt = fileCnt + 1

               $("#submit-form").LoadingOverlay("hide");
            } else {
               $("#submit-form").LoadingOverlay("hide");
               let error = {code:'alert ', type:'alert-danger', message: msg.text};
               this.obs.trigger("guidanceChanged", error);
            }
          })
            return false;
          } catch (err) {
            $("#submit-form").LoadingOverlay("hide")
            console.log(err)
            let msg = {code:'alert ', type:'alert-danger', message: err.message}
            this.obs.trigger("guidanceChanged", msg)
            return false;
          }
        });
      });

    function axiosPostFile(formData,callback){
      axios({
        method: 'post',
        url: '/api/files',
        headers: {
          'Authorization': strageFunc.get('token')
       },
      　data:formData
      })
      .then(data => {
        callback(0, data.data, { type: 'sucess', text: 'sucesstxt' })
      })
    /*.then(json => {//正常
      let type = (json.code == 0) ? 'sucess' : 'error'
      callback(0, json, { type: type, text: json.message })
    })*/
　    .catch(e => {
    　  if (e.response) {
    　    if (e.response['data']) {
    　      if (e.response.status === 404) {
    　        callback(9, null, { type: "error", text: e.message })
    　      } else {
    　        if (e.response.data.error) {
    　          callback(9, null, { type: "error", text: e.response.data.error + ' : ' + e.response.data.error_description })
    　        } else {
    　          callback(9, null, { type: "error", text: e.response.status + ' : ' + e.response.statusText })
    　        }
    　      }
    　    } else {
    　      if (e.response.status === 404) {
    　        callback(9, null, { type: "error", text: e.message })
    　      } else {
    　        callback(9, null, { type: "error", text: e.response.status + ' : ' + e.response.statusText })
    　      }
    　    }
    　  } else {
    　    callback(9, null, { type: "error", text: e.message })
    　  }
    　})
    }

  </script>
</iv-registerfiles>
