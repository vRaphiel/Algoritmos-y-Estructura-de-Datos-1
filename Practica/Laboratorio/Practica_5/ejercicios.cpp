#include <iostream>
#include "ejercicios.h"
#include <math.h>

using namespace std;

/************* Ejercicio 1 *************/
bool estaOrdenadoAsc(vector<int> v){
    int i=0;
    int longitud = v.size();
    bool esMenor = true;
    while(i<longitud-1){
        if(v[i]>v[i+1]){
            esMenor = false;
        }
        i++;
    }
    return esMenor;
}

bool estaOrdenadoDesc(vector<int> v){
    int longitud = v.size();
    int i=0;
    bool esMayor = true;
    while(i<longitud-1){
        if( v[i]<v[i+1] ){
            esMayor = false;
        }
        i++;
    }

    return esMayor;
}
bool estaOrdenado(vector<int> v){
    int longitud = v.size();
    if (longitud==0 || longitud==1)
        return true;
    else
        return estaOrdenadoDesc(v) || estaOrdenadoAsc(v);
}

/************* Ejercicio 2 *************/
bool pertenece(int elemento, vector<int> v){
    int longitud = v.size();
    if(longitud==0)
        return false;
    else {
        int i=0;
        bool sigo = false;
        while(i<longitud){
            if(v[i] == elemento){
                sigo = true;
            }
            i++;
        }
        return sigo;
    }
}

/************* Ejercicio 3 *************/
long fibonacci(int k){
    if(k==0)
        return 0;
    else if(k==1 || k==2)
        return 1;
    else{
        long nesimoItem = 0;
        long nesimoMenosUnoItem = 1;
        long nesimoMenosDosItem = 1;
        for(int nesimo = 0; nesimo<k; nesimo++){
            nesimoMenosDosItem = nesimoMenosUnoItem;
            nesimoMenosUnoItem = nesimoItem;
            nesimoItem = nesimoMenosUnoItem + nesimoMenosDosItem;
        }
        return nesimoItem;
    }
}

/************* Ejercicio 4 *************/

int sumaDoble(vector<int> s){
    int res=0;
    int i = 0;
    while(i < s.size()){
        if(s[i]>=0 && s[i]%2==0 )
            res = res + (s[i]*2);
        i++;
    }
    return res;
}

/************* Ejercicio 5 *************/
bool existePico(vector<int> v){
    int i = 1;
    bool res = false;
    while(i<v.size()-1){
        res = res || (v[i] > v[i-1] && v[i] > v[i+1]);
        i++;
    }

    return res;
}

/************* Ejercicio 6 *************/

int todosImpares(vector<int> v){
    int res=true;
    int i = v.size()-1;
    while(i >= 0) {
        res  = res && (v[i] % 2 == 1);
        i--;
    }
    return res;
}

/************* Ejercicio 7 *************/
bool esPrimo(int n){
    bool res = true;
    for(int i = 2; i < n; i ++){
        if(n % i == 0){
            res = false;
        }
    }
    return res;
}

int sumaPrimos(int n){

    int suma = 0;
    if(n%2==0){
        n = n-1;
    }
    int i = n;
    while( i > 2) {
        if (esPrimo(i)) {
            suma = suma + i;
        }
        i = i - 2;
    }
    return suma;
}


/************* Ejercicio 8 *************/
int indiceMinimoSubsec(vector<int> v, int i, int j){
    int result = i;
    int l = i;
    if(l >= 0){
        while(l < j){
            if(v[result] >= v[l+1]){
                result = l+1;
            }
            l++;
        }
    }

    return result;
}


/************* Ejercicio 9 *************/
int sumatoria(vector<int> v) {
    //Implementar
    return 0;
}


/************* Ejercicio 10 *************/

void ordenar(vector<int>& v){
    //Implementar
}


/************* auxiliar *************/

string mostrarVector(vector<int> v){
    string res = "[";
    for(int i = 0; i < v.size()-1; i++){
        res = res + to_string(v[i]) + ", ";
    }
    if(v.size() > 1){
        res = res + to_string(v[v.size()-1]) ;
    }
    res += "]";
    return res;
}
