(set-env!
 :resource-paths #{"resources"}
 :dependencies '[[org.clojure/clojure "1.9.0" :scope "provided"]
                 [com.joshuadavey/boot-middleman "0.0.7" :scope "test"]])

(require '[com.joshuadavey.boot-middleman :refer [middleman]])
