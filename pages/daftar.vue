<template>
    <div>
        <button class="btn btn-success" @click="getData()">Ambil Data</button>
        <h5>{{judul}}</h5>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm-3" v-for="(x, index) in dataprodukx" :key="index">
                    <div class="card">
                        <div class="card-body">
                            {{x.Nama}}
                        </div>
                        <div class="card-footer">
                            {{x.Harga}}
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>

</template>

<script>
import axios from 'axios';
export default {
    data(){
        return{
            judul:"Daftar Produkxxxx",
            dataprodukx:{},
        }
    },
    mounted(){
        this.getData();
    },
    methods:{
        async getData(){
            let res = await axios.get("http://localhost/fashion/products.php");
             console.log(res.data);
            this.dataprodukx=res.data;
     
        }
    }
}
</script>

<style></style>