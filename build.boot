(set-env!
 :resource-paths #{"resources"}
 :dependencies '[[org.clojure/clojure "1.6.0" :scope "provided"]
                 [com.joshuadavey/boot-middleman "0.0.3" :scope "test"]])

(require '[com.joshuadavey.boot-middleman :refer [middleman]])
