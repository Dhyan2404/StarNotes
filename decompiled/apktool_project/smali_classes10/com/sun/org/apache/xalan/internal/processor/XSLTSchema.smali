.class public Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;
.source "SourceFile"


# instance fields
.field private m_availElems:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->m_availElems:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->build()V

    return-void
.end method


# virtual methods
.method public addAvailableElement(Lcom/sun/org/apache/xml/internal/utils/QName;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->m_availElems:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public build()V
    .locals 102

    new-instance v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v1, 0x0

    const-string v2, "href"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v9, 0x0

    const-string v10, "elements"

    const/16 v11, 0xc

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v1, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v16, 0x0

    const-string v17, "method"

    const/16 v18, 0x9

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v10, "version"

    const/16 v11, 0xd

    const/4 v12, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v17, "encoding"

    const/16 v18, 0x1

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v10, "omit-xml-declaration"

    const/16 v11, 0x8

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v17, "standalone"

    const/16 v18, 0x8

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v10, "doctype-public"

    const/4 v11, 0x1

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v8, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v17, "doctype-system"

    const/16 v18, 0x1

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v16, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v10, 0x0

    const-string v11, "cdata-section-elements"

    const/16 v12, 0x13

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v9, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v18, 0x0

    const-string v19, "indent"

    const/16 v20, 0x8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v10, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v25, 0x0

    const-string v26, "media-type"

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v11, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v19, "name"

    const/16 v20, 0x9

    const/16 v21, 0x1

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v12, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v26, "name"

    const/16 v27, 0x12

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x2

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v13, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v19, "name"

    const/16 v20, 0x11

    const/16 v22, 0x1

    const/16 v23, 0x2

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v26, "name"

    const/16 v27, 0x9

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v15, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v19, "use"

    const/16 v20, 0x5

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v23}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v17, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v26, "namespace"

    const/16 v27, 0x2

    const/16 v29, 0x1

    const/16 v30, 0x2

    move-object/from16 v24, v17

    invoke-direct/range {v24 .. v30}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v25, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v19, 0x0

    const-string v20, "decimal-separator"

    const/16 v21, 0x6

    const-string v24, "."

    move-object/from16 v18, v25

    invoke-direct/range {v18 .. v24}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v18, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v27, 0x0

    const-string v28, "infinity"

    const/16 v30, 0x0

    const/16 v31, 0x1

    const-string v32, "Infinity"

    move-object/from16 v26, v18

    invoke-direct/range {v26 .. v32}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v19, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v34, 0x0

    const-string v35, "minus-sign"

    const/16 v36, 0x6

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-string v39, "-"

    move-object/from16 v33, v19

    invoke-direct/range {v33 .. v39}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v20, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v28, "NaN"

    const-string v32, "NaN"

    move-object/from16 v26, v20

    invoke-direct/range {v26 .. v32}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v21, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v35, "percent"

    const-string v39, "%"

    move-object/from16 v33, v21

    invoke-direct/range {v33 .. v39}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v22, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v28, "per-mille"

    const/16 v29, 0x6

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v26, v22

    invoke-direct/range {v26 .. v32}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v23, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v35, "zero-digit"

    const-string v39, "0"

    move-object/from16 v33, v23

    invoke-direct/range {v33 .. v39}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v24, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v28, "digit"

    const/16 v31, 0x1

    const-string v32, "#"

    move-object/from16 v26, v24

    invoke-direct/range {v26 .. v32}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v26, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v35, "pattern-separator"

    const-string v39, ";"

    move-object/from16 v33, v26

    invoke-direct/range {v33 .. v39}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v34, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v28, 0x0

    const-string v29, "grouping-separator"

    const/16 v30, 0x6

    const/16 v31, 0x0

    const/16 v32, 0x1

    const-string v33, ","

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v33}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v27, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v36, 0x0

    const-string v37, "use-attribute-sets"

    const/16 v38, 0xa

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v35, v27

    invoke-direct/range {v35 .. v41}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v28, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v43, 0x0

    const-string v44, "test"

    const/16 v45, 0x5

    const/16 v46, 0x1

    const/16 v47, 0x0

    const/16 v48, 0x1

    move-object/from16 v42, v28

    invoke-direct/range {v42 .. v48}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v29, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v37, "select"

    const/16 v38, 0x5

    const/16 v39, 0x1

    move-object/from16 v35, v29

    invoke-direct/range {v35 .. v41}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v30, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v44, "select"

    const/16 v46, 0x0

    move-object/from16 v42, v30

    invoke-direct/range {v42 .. v48}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v31, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v37, "select"

    const/16 v39, 0x0

    const/16 v40, 0x1

    const-string v41, "node()"

    move-object/from16 v35, v31

    invoke-direct/range {v35 .. v41}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v32, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v44, "select"

    const/16 v47, 0x1

    const-string v48, "."

    move-object/from16 v42, v32

    invoke-direct/range {v42 .. v48}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V

    new-instance v33, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v37, "match"

    const/16 v38, 0x4

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x1

    move-object/from16 v35, v33

    invoke-direct/range {v35 .. v41}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v35, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v44, "match"

    const/16 v45, 0x4

    const/16 v47, 0x0

    const/16 v48, 0x1

    move-object/from16 v42, v35

    invoke-direct/range {v42 .. v48}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v43, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v37, 0x0

    const-string v38, "priority"

    const/16 v39, 0x7

    const/16 v41, 0x0

    const/16 v42, 0x1

    move-object/from16 v36, v43

    invoke-direct/range {v36 .. v42}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v36, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v45, 0x0

    const-string v46, "mode"

    const/16 v47, 0x9

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x1

    move-object/from16 v44, v36

    invoke-direct/range {v44 .. v50}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v37, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v52, "http://www.w3.org/XML/1998/namespace"

    const-string v53, "space"

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x2

    const-string v58, "default"

    const/16 v59, 0x2

    const-string v60, "preserve"

    const/16 v61, 0x1

    move-object/from16 v51, v37

    invoke-direct/range {v51 .. v61}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    new-instance v38, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v45, "http://www.w3.org/XML/1998/namespace"

    const-string v46, "space"

    const/16 v47, 0x2

    const/16 v49, 0x1

    move-object/from16 v44, v38

    invoke-direct/range {v44 .. v50}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v39, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v52, 0x0

    const-string v53, "stylesheet-prefix"

    const/16 v54, 0x1

    const/16 v55, 0x1

    const/16 v57, 0x1

    move-object/from16 v51, v39

    invoke-direct/range {v51 .. v57}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v40, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v45, 0x0

    const-string v46, "result-prefix"

    const/16 v47, 0x1

    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v44, v40

    invoke-direct/range {v44 .. v50}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v41, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v53, "disable-output-escaping"

    const/16 v54, 0x8

    const/16 v55, 0x0

    move-object/from16 v51, v41

    invoke-direct/range {v51 .. v57}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v42, v14

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v59, 0x0

    const-string v60, "level"

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x1

    const-string v65, "single"

    const/16 v66, 0x1

    const-string v67, "multiple"

    const/16 v68, 0x2

    const-string v69, "any"

    const/16 v70, 0x3

    move-object/from16 v58, v14

    invoke-direct/range {v58 .. v70}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v44, v15

    const-string v15, "single"

    invoke-virtual {v14, v15}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v15, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v46, 0x0

    const-string v47, "count"

    const/16 v48, 0x4

    const/16 v50, 0x0

    const/16 v51, 0x1

    move-object/from16 v45, v15

    invoke-direct/range {v45 .. v51}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v45, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v53, 0x0

    const-string v54, "from"

    const/16 v55, 0x4

    const/16 v57, 0x0

    const/16 v58, 0x1

    move-object/from16 v52, v45

    invoke-direct/range {v52 .. v58}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v53, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v47, 0x0

    const-string v48, "value"

    const/16 v49, 0x5

    const/16 v51, 0x0

    const/16 v52, 0x1

    move-object/from16 v46, v53

    invoke-direct/range {v46 .. v52}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v46, v10

    new-instance v10, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v55, 0x0

    const-string v56, "format"

    const/16 v57, 0x1

    const/16 v58, 0x0

    const/16 v59, 0x1

    const/16 v60, 0x1

    move-object/from16 v54, v10

    invoke-direct/range {v54 .. v60}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v47, v9

    const-string v9, "1"

    invoke-virtual {v10, v9}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v9, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v56, "lang"

    const/16 v57, 0xd

    move-object/from16 v54, v9

    invoke-direct/range {v54 .. v60}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v48, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v62, 0x0

    const-string v63, "letter-value"

    const/16 v64, 0x0

    const/16 v65, 0x1

    const/16 v66, 0x0

    const/16 v67, 0x1

    const-string v68, "alphabetic"

    const/16 v69, 0x1

    const-string v70, "traditional"

    const/16 v71, 0x2

    move-object/from16 v61, v48

    invoke-direct/range {v61 .. v71}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    new-instance v49, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v56, "grouping-separator"

    const/16 v57, 0x6

    move-object/from16 v54, v49

    invoke-direct/range {v54 .. v60}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v50, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v63, "grouping-size"

    const/16 v64, 0x7

    const/16 v65, 0x0

    const/16 v66, 0x1

    move-object/from16 v61, v50

    invoke-direct/range {v61 .. v67}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v51, v8

    new-instance v8, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v69, 0x0

    const-string v70, "data-type"

    const/16 v71, 0x0

    const/16 v72, 0x1

    const/16 v73, 0x1

    const/16 v74, 0x1

    const-string v75, "text"

    const/16 v76, 0x1

    const-string v77, "number"

    const/16 v78, 0x1

    move-object/from16 v68, v8

    invoke-direct/range {v68 .. v78}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v52, v6

    const-string v6, "text"

    invoke-virtual {v8, v6}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v56, "order"

    const/16 v57, 0x0

    const/16 v58, 0x1

    const/16 v59, 0x0

    const-string v61, "ascending"

    const/16 v62, 0x1

    const-string v63, "descending"

    const/16 v64, 0x2

    move-object/from16 v54, v6

    invoke-direct/range {v54 .. v64}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v54, v5

    const-string v5, "ascending"

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v56, 0x0

    const-string v57, "case-order"

    const/16 v58, 0x0

    const/16 v59, 0x1

    const/16 v60, 0x0

    const/16 v61, 0x1

    const-string v62, "upper-first"

    const/16 v63, 0x1

    const-string v64, "lower-first"

    const/16 v65, 0x2

    move-object/from16 v55, v5

    invoke-direct/range {v55 .. v65}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v55, v4

    new-instance v4, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v67, 0x0

    const-string v68, "terminate"

    const/16 v69, 0x8

    const/16 v70, 0x0

    move-object/from16 v66, v4

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v56, v3

    const-string v3, "no"

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->setDefault(Ljava/lang/String;)V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v58, "http://www.w3.org/1999/XSL/Transform"

    const-string v59, "exclude-result-prefixes"

    const/16 v60, 0x14

    const/16 v61, 0x0

    const/16 v62, 0x0

    move-object/from16 v57, v3

    invoke-direct/range {v57 .. v63}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v57, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v65, "http://www.w3.org/1999/XSL/Transform"

    const-string v66, "extension-element-prefixes"

    const/16 v67, 0xf

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x1

    move-object/from16 v64, v57

    invoke-direct/range {v64 .. v70}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v65, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v59, "http://www.w3.org/1999/XSL/Transform"

    const-string v60, "use-attribute-sets"

    const/16 v61, 0xa

    const/16 v63, 0x0

    const/16 v64, 0x1

    move-object/from16 v58, v65

    invoke-direct/range {v58 .. v64}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v58, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v67, "http://www.w3.org/1999/XSL/Transform"

    const-string v68, "version"

    const/16 v69, 0xd

    const/16 v70, 0x0

    move-object/from16 v66, v58

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    move-object/from16 v59, v2

    new-instance v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/16 v75, 0x0

    const-string v76, "text()"

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    new-instance v80, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;

    invoke-direct/range {v80 .. v80}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorCharacters;-><init>()V

    const-class v81, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    move-object/from16 v73, v2

    move-object/from16 v74, p0

    invoke-direct/range {v73 .. v81}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    move-object/from16 v60, v1

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setType(I)V

    new-instance v61, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/16 v68, 0x0

    const-string v69, "text()"

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemTextLiteral;

    move-object/from16 v66, v61

    move-object/from16 v67, p0

    invoke-direct/range {v66 .. v74}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setType(I)V

    new-instance v62, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v76, 0x0

    const-string v77, "*"

    const/16 v78, 0x3

    const/16 v79, 0x0

    const/16 v80, 0x1

    const/16 v81, 0x2

    move-object/from16 v75, v62

    invoke-direct/range {v75 .. v81}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v63, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v67, "http://www.w3.org/1999/XSL/Transform"

    const-string v68, "*"

    const/16 v69, 0x1

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x2

    move-object/from16 v66, v63

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const/16 v1, 0x17

    move-object/from16 v79, v0

    new-array v0, v1, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/16 v1, 0x18

    move-object/from16 v81, v7

    new-array v7, v1, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-object/from16 v96, v4

    new-array v4, v1, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    new-array v1, v1, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    move-object/from16 v97, v1

    const/16 v1, 0xf

    move-object/from16 v98, v13

    new-array v13, v1, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    new-instance v99, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/16 v68, 0x0

    const-string v69, "*"

    const/16 v70, 0x0

    const/4 v1, 0x7

    move-object/from16 v100, v2

    new-array v2, v1, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v1, 0x0

    aput-object v38, v2, v1

    const/4 v1, 0x1

    aput-object v3, v2, v1

    const/16 v64, 0x2

    aput-object v57, v2, v64

    const/4 v1, 0x3

    aput-object v65, v2, v1

    const/4 v1, 0x4

    aput-object v58, v2, v1

    const/4 v1, 0x5

    aput-object v63, v2, v1

    const/4 v1, 0x6

    aput-object v62, v2, v1

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemLiteralResult;

    const/16 v75, 0x14

    const/16 v76, 0x1

    move-object/from16 v66, v99

    move-object/from16 v67, p0

    move-object/from16 v71, v0

    move-object/from16 v72, v2

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "*"

    const-string v69, "unknown"

    move-object/from16 v101, v13

    new-array v13, v1, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v38, 0x0

    aput-object v3, v13, v38

    const/4 v3, 0x1

    aput-object v57, v13, v3

    const/4 v3, 0x2

    aput-object v65, v13, v3

    const/4 v3, 0x3

    aput-object v58, v13, v3

    const/4 v3, 0x4

    aput-object v63, v13, v3

    const/4 v3, 0x5

    aput-object v62, v13, v3

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorUnknown;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorUnknown;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemUnknown;

    move-object/from16 v66, v2

    move-object/from16 v71, v7

    move-object/from16 v72, v13

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "value-of"

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/4 v13, 0x2

    new-array v1, v13, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v13, 0x0

    aput-object v29, v1, v13

    const/4 v13, 0x1

    aput-object v41, v1, v13

    new-instance v89, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v89 .. v89}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v90, Lcom/sun/org/apache/xalan/internal/templates/ElemValueOf;

    const/16 v91, 0x14

    const/16 v92, 0x1

    move-object/from16 v82, v3

    move-object/from16 v83, p0

    move-object/from16 v88, v1

    invoke-direct/range {v82 .. v92}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v1, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v67, "http://www.w3.org/1999/XSL/Transform"

    const-string v68, "copy-of"

    const/16 v69, 0x0

    move-object/from16 v58, v7

    const/4 v13, 0x1

    new-array v7, v13, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v13, 0x0

    aput-object v29, v7, v13

    new-instance v72, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v72 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v73, Lcom/sun/org/apache/xalan/internal/templates/ElemCopyOf;

    const/16 v74, 0x14

    const/16 v75, 0x1

    move-object/from16 v65, v1

    move-object/from16 v66, p0

    move-object/from16 v71, v7

    invoke-direct/range {v65 .. v75}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "number"

    const/16 v13, 0x9

    move-object/from16 v62, v2

    new-array v2, v13, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v38, 0x0

    aput-object v14, v2, v38

    const/4 v14, 0x1

    aput-object v15, v2, v14

    const/4 v14, 0x2

    aput-object v45, v2, v14

    const/4 v14, 0x3

    aput-object v53, v2, v14

    const/4 v14, 0x4

    aput-object v10, v2, v14

    const/4 v10, 0x5

    aput-object v9, v2, v10

    const/4 v10, 0x6

    aput-object v48, v2, v10

    const/4 v10, 0x7

    aput-object v49, v2, v10

    const/16 v10, 0x8

    aput-object v50, v2, v10

    new-instance v89, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v89 .. v89}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v90, Lcom/sun/org/apache/xalan/internal/templates/ElemNumber;

    move-object/from16 v82, v7

    move-object/from16 v88, v2

    invoke-direct/range {v82 .. v92}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v67, "http://www.w3.org/1999/XSL/Transform"

    const-string v68, "sort"

    const/4 v14, 0x5

    new-array v15, v14, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    aput-object v32, v15, v14

    const/4 v14, 0x1

    aput-object v9, v15, v14

    const/4 v9, 0x2

    aput-object v8, v15, v9

    const/4 v8, 0x3

    aput-object v6, v15, v8

    const/4 v6, 0x4

    aput-object v5, v15, v6

    new-instance v72, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v72 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v73, Lcom/sun/org/apache/xalan/internal/templates/ElemSort;

    const/16 v74, 0x13

    move-object/from16 v65, v2

    move-object/from16 v71, v15

    invoke-direct/range {v65 .. v75}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "with-param"

    const/4 v6, 0x2

    new-array v8, v6, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v6, 0x0

    aput-object v11, v8, v6

    const/4 v6, 0x1

    aput-object v30, v8, v6

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemWithParam;

    const/16 v75, 0x13

    move-object/from16 v66, v5

    move-object/from16 v67, p0

    move-object/from16 v71, v0

    move-object/from16 v72, v8

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "apply-templates"

    const/4 v8, 0x2

    new-array v9, v8, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v14, 0x0

    aput-object v2, v9, v14

    const/4 v15, 0x1

    aput-object v5, v9, v15

    new-array v13, v8, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    aput-object v31, v13, v14

    aput-object v36, v13, v15

    new-instance v89, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v89 .. v89}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v90, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyTemplates;

    move-object/from16 v82, v6

    move-object/from16 v87, v9

    move-object/from16 v88, v13

    invoke-direct/range {v82 .. v92}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v8, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v67, "http://www.w3.org/1999/XSL/Transform"

    const-string v68, "apply-imports"

    const/16 v69, 0x0

    const/4 v9, 0x0

    new-array v13, v9, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    new-instance v72, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v72 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v73, Lcom/sun/org/apache/xalan/internal/templates/ElemApplyImport;

    move-object/from16 v65, v8

    move-object/from16 v66, p0

    move-object/from16 v71, v13

    invoke-direct/range {v65 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    new-instance v9, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "for-each"

    const/4 v13, 0x2

    new-array v14, v13, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v13, 0x0

    aput-object v29, v14, v13

    const/4 v13, 0x1

    aput-object v37, v14, v13

    new-instance v89, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v89 .. v89}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v90, Lcom/sun/org/apache/xalan/internal/templates/ElemForEach;

    const/16 v91, 0x1

    const/16 v92, 0x0

    const/16 v93, 0x1

    const/16 v94, 0x14

    const/16 v95, 0x1

    move-object/from16 v82, v9

    move-object/from16 v87, v4

    move-object/from16 v88, v14

    invoke-direct/range {v82 .. v95}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    new-instance v13, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "if"

    const/4 v14, 0x2

    new-array v15, v14, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    aput-object v28, v15, v14

    const/4 v14, 0x1

    aput-object v37, v15, v14

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemIf;

    const/16 v75, 0x14

    move-object/from16 v66, v13

    move-object/from16 v67, p0

    move-object/from16 v71, v0

    move-object/from16 v72, v15

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "when"

    const/4 v15, 0x2

    new-array v10, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v28, v10, v15

    const/4 v15, 0x1

    aput-object v37, v10, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemWhen;

    const/16 v75, 0x0

    const/16 v77, 0x1

    const/16 v78, 0x1

    move-object/from16 v66, v14

    move-object/from16 v72, v10

    invoke-direct/range {v66 .. v78}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    new-instance v10, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "otherwise"

    move-object/from16 v28, v2

    const/4 v15, 0x1

    new-array v2, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v37, v2, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemOtherwise;

    const/16 v76, 0x0

    const/16 v77, 0x2

    const/16 v78, 0x0

    move-object/from16 v66, v10

    move-object/from16 v72, v2

    invoke-direct/range {v66 .. v78}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "choose"

    move-object/from16 v31, v4

    const/4 v15, 0x2

    new-array v4, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v15, 0x0

    aput-object v14, v4, v15

    const/4 v14, 0x1

    aput-object v10, v4, v14

    new-array v10, v14, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    aput-object v37, v10, v15

    new-instance v89, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v89 .. v89}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v90, Lcom/sun/org/apache/xalan/internal/templates/ElemChoose;

    move-object/from16 v82, v2

    move-object/from16 v87, v4

    move-object/from16 v88, v10

    invoke-direct/range {v82 .. v95}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "attribute"

    const/4 v10, 0x3

    new-array v14, v10, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v10, 0x0

    aput-object v12, v14, v10

    const/4 v10, 0x1

    aput-object v17, v14, v10

    const/4 v10, 0x2

    aput-object v37, v14, v10

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemAttribute;

    const/16 v75, 0x14

    const/16 v76, 0x1

    move-object/from16 v66, v4

    move-object/from16 v71, v101

    move-object/from16 v72, v14

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v10, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "call-template"

    const/4 v14, 0x1

    new-array v15, v14, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/16 v38, 0x0

    aput-object v5, v15, v38

    new-array v5, v14, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    aput-object v11, v5, v38

    new-instance v89, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v89 .. v89}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v90, Lcom/sun/org/apache/xalan/internal/templates/ElemCallTemplate;

    const/16 v91, 0x14

    const/16 v92, 0x1

    move-object/from16 v82, v10

    move-object/from16 v87, v15

    move-object/from16 v88, v5

    invoke-direct/range {v82 .. v92}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "variable"

    const/4 v14, 0x2

    new-array v15, v14, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    aput-object v11, v15, v14

    const/4 v14, 0x1

    aput-object v30, v15, v14

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-object/from16 v66, v5

    move-object/from16 v71, v0

    move-object/from16 v72, v15

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "param"

    move-object/from16 v45, v4

    const/4 v15, 0x2

    new-array v4, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v11, v4, v15

    const/4 v15, 0x1

    aput-object v30, v4, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    const/16 v75, 0x13

    move-object/from16 v66, v14

    move-object/from16 v72, v4

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v84, "http://www.w3.org/1999/XSL/Transform"

    const-string v85, "text"

    move-object/from16 v48, v14

    const/4 v15, 0x1

    new-array v14, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/16 v38, 0x0

    aput-object v100, v14, v38

    move-object/from16 v49, v5

    new-array v5, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    aput-object v41, v5, v38

    new-instance v89, Lcom/sun/org/apache/xalan/internal/processor/ProcessorText;

    invoke-direct/range {v89 .. v89}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorText;-><init>()V

    const-class v90, Lcom/sun/org/apache/xalan/internal/templates/ElemText;

    move-object/from16 v82, v4

    move-object/from16 v87, v14

    move-object/from16 v88, v5

    invoke-direct/range {v82 .. v92}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "processing-instruction"

    const/4 v14, 0x2

    new-array v15, v14, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    aput-object v98, v15, v14

    const/4 v14, 0x1

    aput-object v37, v15, v14

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemPI;

    const/16 v75, 0x14

    move-object/from16 v66, v5

    move-object/from16 v71, v101

    move-object/from16 v72, v15

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "element"

    move-object/from16 v41, v5

    const/4 v15, 0x4

    new-array v5, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v12, v5, v15

    const/4 v12, 0x1

    aput-object v17, v5, v12

    const/4 v12, 0x2

    aput-object v27, v5, v12

    const/4 v12, 0x3

    aput-object v37, v5, v12

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemElement;

    move-object/from16 v66, v14

    move-object/from16 v71, v0

    move-object/from16 v72, v5

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "comment"

    const/4 v12, 0x1

    new-array v15, v12, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v12, 0x0

    aput-object v37, v15, v12

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemComment;

    move-object/from16 v66, v5

    move-object/from16 v71, v101

    move-object/from16 v72, v15

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v12, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "copy"

    move-object/from16 v17, v14

    const/4 v15, 0x2

    new-array v14, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v37, v14, v15

    const/4 v15, 0x1

    aput-object v27, v14, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemCopy;

    move-object/from16 v66, v12

    move-object/from16 v71, v0

    move-object/from16 v72, v14

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "message"

    move-object/from16 v50, v5

    const/4 v15, 0x1

    new-array v5, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v96, v5, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemMessage;

    move-object/from16 v66, v14

    move-object/from16 v72, v5

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "fallback"

    move-object/from16 v53, v14

    const/4 v15, 0x1

    new-array v14, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v37, v14, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplateElem;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemFallback;

    move-object/from16 v66, v5

    move-object/from16 v72, v14

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://exslt.org/functions"

    const-string v69, "function"

    move-object/from16 v63, v5

    const/4 v15, 0x1

    new-array v5, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v11, v5, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFunction;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFunction;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFunction;

    move-object/from16 v66, v14

    move-object/from16 v71, v97

    move-object/from16 v72, v5

    invoke-direct/range {v66 .. v74}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://exslt.org/functions"

    const-string v69, "result"

    move-object/from16 v65, v11

    const/4 v15, 0x1

    new-array v11, v15, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v15, 0x0

    aput-object v30, v11, v15

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFuncResult;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorExsltFuncResult;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemExsltFuncResult;

    move-object/from16 v66, v5

    move-object/from16 v71, v0

    move-object/from16 v72, v11

    invoke-direct/range {v66 .. v74}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    const/4 v11, 0x0

    aput-object v100, v0, v11

    const/4 v11, 0x1

    aput-object v6, v0, v11

    const/4 v11, 0x2

    aput-object v10, v0, v11

    const/4 v11, 0x3

    aput-object v8, v0, v11

    const/4 v11, 0x4

    aput-object v9, v0, v11

    const/4 v11, 0x5

    aput-object v3, v0, v11

    const/4 v11, 0x6

    aput-object v1, v0, v11

    const/4 v11, 0x7

    aput-object v7, v0, v11

    const/16 v11, 0x8

    aput-object v2, v0, v11

    const/16 v11, 0x9

    aput-object v13, v0, v11

    const/16 v11, 0xa

    aput-object v4, v0, v11

    const/16 v15, 0xb

    aput-object v12, v0, v15

    const/16 v78, 0xc

    aput-object v49, v0, v78

    const/16 v82, 0xd

    aput-object v53, v0, v82

    const/16 v83, 0xe

    aput-object v63, v0, v83

    const/16 v66, 0xf

    aput-object v41, v0, v66

    const/16 v41, 0x10

    aput-object v50, v0, v41

    const/16 v15, 0x11

    aput-object v17, v0, v15

    const/16 v17, 0x12

    aput-object v45, v0, v17

    const/16 v17, 0x13

    aput-object v99, v0, v17

    const/16 v17, 0x14

    aput-object v62, v0, v17

    const/16 v17, 0x15

    aput-object v14, v0, v17

    const/16 v17, 0x16

    aput-object v5, v0, v17

    const/4 v5, 0x0

    const/16 v15, 0x17

    :goto_0
    if-ge v5, v15, :cond_0

    aget-object v66, v0, v5

    aput-object v66, v58, v5

    aget-object v66, v0, v5

    aput-object v66, v31, v5

    aget-object v66, v0, v5

    aput-object v66, v97, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    aput-object v48, v58, v5

    aput-object v28, v31, v5

    aput-object v48, v97, v5

    const/4 v5, 0x0

    aput-object v100, v101, v5

    const/4 v5, 0x1

    aput-object v6, v101, v5

    const/4 v5, 0x2

    aput-object v10, v101, v5

    const/4 v5, 0x3

    aput-object v8, v101, v5

    const/4 v5, 0x4

    aput-object v9, v101, v5

    const/4 v5, 0x5

    aput-object v3, v101, v5

    const/4 v3, 0x6

    aput-object v1, v101, v3

    const/4 v1, 0x7

    aput-object v7, v101, v1

    const/16 v1, 0x8

    aput-object v2, v101, v1

    const/16 v1, 0x9

    aput-object v13, v101, v1

    aput-object v4, v101, v11

    const/16 v1, 0xb

    aput-object v12, v101, v1

    aput-object v49, v101, v78

    aput-object v53, v101, v82

    aput-object v63, v101, v83

    new-instance v1, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "import"

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v2, 0x0

    aput-object v81, v3, v2

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorImport;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorImport;-><init>()V

    const/16 v74, 0x0

    const/16 v75, 0x1

    const/16 v76, 0x1

    move-object/from16 v66, v1

    move-object/from16 v67, p0

    move-object/from16 v72, v3

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    new-instance v2, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v86, "http://www.w3.org/1999/XSL/Transform"

    const-string v87, "include"

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v3, 0x0

    aput-object v81, v4, v3

    new-instance v91, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;

    invoke-direct/range {v91 .. v91}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;-><init>()V

    const/16 v92, 0x0

    const/16 v93, 0x14

    const/16 v94, 0x1

    move-object/from16 v84, v2

    move-object/from16 v85, p0

    move-object/from16 v90, v4

    invoke-direct/range {v84 .. v94}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/4 v3, 0x2

    new-array v4, v3, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/16 v67, 0x0

    const-string v68, "lang"

    const/16 v69, 0xd

    const/16 v70, 0x1

    const/16 v71, 0x0

    const/16 v72, 0x2

    move-object/from16 v66, v3

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const/4 v5, 0x0

    aput-object v3, v4, v5

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v68, "src"

    const/16 v69, 0x2

    const/16 v70, 0x0

    move-object/from16 v66, v3

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x3

    new-array v5, v3, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v68, "prefix"

    const/16 v69, 0xd

    const/16 v70, 0x1

    move-object/from16 v66, v3

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const/4 v6, 0x0

    aput-object v3, v5, v6

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v68, "elements"

    const/16 v69, 0xe

    const/16 v70, 0x0

    move-object/from16 v66, v3

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const/4 v6, 0x1

    aput-object v3, v5, v6

    new-instance v3, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v68, "functions"

    move-object/from16 v66, v3

    invoke-direct/range {v66 .. v72}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/16 v3, 0x11

    new-array v3, v3, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const/4 v8, 0x1

    aput-object v1, v3, v8

    aput-object v61, v3, v6

    const/4 v6, 0x3

    aput-object v62, v3, v6

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "strip-space"

    const/16 v70, 0x0

    const/16 v71, 0x0

    new-array v9, v8, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    aput-object v79, v9, v7

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStripSpace;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStripSpace;-><init>()V

    const/16 v75, 0x14

    move-object/from16 v66, v6

    move-object/from16 v67, p0

    move-object/from16 v72, v9

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/4 v7, 0x4

    aput-object v6, v3, v7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "preserve-space"

    const/4 v7, 0x1

    new-array v8, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    aput-object v79, v8, v7

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorPreserveSpace;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorPreserveSpace;-><init>()V

    move-object/from16 v66, v6

    move-object/from16 v72, v8

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/4 v7, 0x5

    aput-object v6, v3, v7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "output"

    const/16 v7, 0xb

    new-array v8, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    aput-object v60, v8, v7

    const/4 v7, 0x1

    aput-object v59, v8, v7

    const/4 v7, 0x2

    aput-object v56, v8, v7

    const/4 v7, 0x3

    aput-object v55, v8, v7

    const/4 v7, 0x4

    aput-object v54, v8, v7

    const/4 v7, 0x5

    aput-object v52, v8, v7

    const/4 v7, 0x6

    aput-object v51, v8, v7

    const/4 v7, 0x7

    aput-object v16, v8, v7

    const/16 v7, 0x8

    aput-object v47, v8, v7

    const/16 v7, 0x9

    aput-object v46, v8, v7

    sget-object v7, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;->m_foreignAttr:Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    aput-object v7, v8, v11

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorOutputElem;-><init>()V

    move-object/from16 v66, v6

    move-object/from16 v72, v8

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/4 v7, 0x6

    aput-object v6, v3, v7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "key"

    const/4 v7, 0x3

    new-array v8, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    aput-object v65, v8, v7

    const/4 v7, 0x1

    aput-object v33, v8, v7

    const/4 v7, 0x2

    aput-object v44, v8, v7

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorKey;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorKey;-><init>()V

    move-object/from16 v66, v6

    move-object/from16 v72, v8

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/4 v7, 0x7

    aput-object v6, v3, v7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "decimal-format"

    const/16 v7, 0xb

    new-array v8, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    aput-object v42, v8, v7

    const/4 v7, 0x1

    aput-object v25, v8, v7

    const/4 v7, 0x2

    aput-object v34, v8, v7

    const/4 v7, 0x3

    aput-object v18, v8, v7

    const/4 v7, 0x4

    aput-object v19, v8, v7

    const/4 v7, 0x5

    aput-object v20, v8, v7

    const/4 v7, 0x6

    aput-object v21, v8, v7

    const/4 v7, 0x7

    aput-object v22, v8, v7

    const/16 v7, 0x8

    aput-object v23, v8, v7

    const/16 v7, 0x9

    aput-object v24, v8, v7

    aput-object v26, v8, v11

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorDecimalFormat;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorDecimalFormat;-><init>()V

    move-object/from16 v66, v6

    move-object/from16 v72, v8

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/16 v7, 0x8

    aput-object v6, v3, v7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v17, "http://www.w3.org/1999/XSL/Transform"

    const-string v18, "attribute-set"

    const/16 v19, 0x0

    const/4 v7, 0x1

    new-array v8, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v9, 0x0

    aput-object v45, v8, v9

    const/4 v10, 0x2

    new-array v12, v10, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    aput-object v65, v12, v9

    aput-object v27, v12, v7

    new-instance v22, Lcom/sun/org/apache/xalan/internal/processor/ProcessorAttributeSet;

    invoke-direct/range {v22 .. v22}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorAttributeSet;-><init>()V

    const/16 v23, 0x0

    const/16 v24, 0x14

    const/16 v25, 0x1

    move-object v15, v6

    move-object/from16 v16, p0

    move-object/from16 v20, v8

    move-object/from16 v21, v12

    invoke-direct/range {v15 .. v25}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/16 v7, 0x9

    aput-object v6, v3, v7

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "variable"

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    aput-object v65, v8, v7

    const/4 v7, 0x1

    aput-object v30, v8, v7

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorGlobalVariableDecl;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorGlobalVariableDecl;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemVariable;

    move-object/from16 v66, v6

    move-object/from16 v71, v0

    move-object/from16 v72, v8

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v6, v3, v11

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "param"

    const/4 v7, 0x2

    new-array v8, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v7, 0x0

    aput-object v65, v8, v7

    const/4 v7, 0x1

    aput-object v30, v8, v7

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorGlobalParamDecl;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorGlobalParamDecl;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemParam;

    move-object/from16 v66, v6

    move-object/from16 v72, v8

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/16 v0, 0xb

    aput-object v6, v3, v0

    new-instance v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "template"

    const/4 v6, 0x5

    new-array v7, v6, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v6, 0x0

    aput-object v35, v7, v6

    const/4 v6, 0x1

    aput-object v42, v7, v6

    const/4 v6, 0x2

    aput-object v43, v7, v6

    const/4 v6, 0x3

    aput-object v36, v7, v6

    const/4 v6, 0x4

    aput-object v37, v7, v6

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplate;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorTemplate;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemTemplate;

    const/16 v75, 0x1

    const/16 v76, 0x14

    const/16 v77, 0x1

    move-object/from16 v66, v0

    move-object/from16 v71, v58

    move-object/from16 v72, v7

    invoke-direct/range {v66 .. v77}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    aput-object v0, v3, v78

    new-instance v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v17, "http://www.w3.org/1999/XSL/Transform"

    const-string v18, "namespace-alias"

    const/16 v20, 0x0

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v6, 0x0

    aput-object v39, v7, v6

    const/4 v6, 0x1

    aput-object v40, v7, v6

    new-instance v22, Lcom/sun/org/apache/xalan/internal/processor/ProcessorNamespaceAlias;

    invoke-direct/range {v22 .. v22}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorNamespaceAlias;-><init>()V

    move-object v15, v0

    move-object/from16 v21, v7

    invoke-direct/range {v15 .. v25}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    aput-object v0, v3, v82

    new-instance v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v6, "http://xml.apache.org/xalan"

    const-string v7, "component"

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v10, v9, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    new-instance v11, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://xml.apache.org/xalan"

    const-string v69, "script"

    new-array v12, v9, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v9, 0x0

    aput-object v100, v12, v9

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;

    const/16 v75, 0x14

    const/16 v76, 0x1

    move-object/from16 v66, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v4

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/4 v9, 0x0

    aput-object v11, v10, v9

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;

    move-object/from16 v66, v0

    move-object/from16 v68, v6

    move-object/from16 v69, v7

    move-object/from16 v70, v8

    move-object/from16 v71, v10

    move-object/from16 v72, v5

    invoke-direct/range {v66 .. v74}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    aput-object v0, v3, v83

    new-instance v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v6, "http://xml.apache.org/xslt"

    const-string v7, "component"

    const/4 v9, 0x1

    new-array v10, v9, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    new-instance v11, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://xml.apache.org/xslt"

    const-string v69, "script"

    const/16 v70, 0x0

    new-array v12, v9, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v9, 0x0

    aput-object v100, v12, v9

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionScript;

    move-object/from16 v66, v11

    move-object/from16 v71, v12

    move-object/from16 v72, v4

    invoke-direct/range {v66 .. v76}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    const/4 v4, 0x0

    aput-object v11, v10, v4

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorLRE;-><init>()V

    const-class v74, Lcom/sun/org/apache/xalan/internal/templates/ElemExtensionDecl;

    move-object/from16 v66, v0

    move-object/from16 v68, v6

    move-object/from16 v69, v7

    move-object/from16 v70, v8

    move-object/from16 v71, v10

    move-object/from16 v72, v5

    invoke-direct/range {v66 .. v74}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    const/16 v4, 0xf

    aput-object v0, v3, v4

    aput-object v14, v3, v41

    new-instance v0, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v6, 0x0

    const-string v7, "exclude-result-prefixes"

    const/16 v8, 0x14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v4, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v13, 0x0

    const-string v14, "extension-element-prefixes"

    const/16 v15, 0xf

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v12, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const-string v7, "id"

    const/4 v8, 0x1

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v5, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v14, 0x0

    const-string v15, "version"

    const/16 v16, 0xd

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v13, v5

    invoke-direct/range {v13 .. v19}, Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    new-instance v6, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const-string v68, "http://www.w3.org/1999/XSL/Transform"

    const-string v69, "stylesheet"

    const-string v70, "transform"

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v0, v7, v4

    const/4 v0, 0x2

    aput-object v12, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v37, v7, v0

    new-instance v73, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetElement;

    invoke-direct/range {v73 .. v73}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetElement;-><init>()V

    const/16 v74, 0x0

    const/16 v75, 0x1

    const/16 v76, -0x1

    const/16 v77, 0x0

    move-object/from16 v66, v6

    move-object/from16 v71, v3

    move-object/from16 v72, v7

    invoke-direct/range {v66 .. v77}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;-><init>(Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V

    const/4 v0, 0x3

    new-array v3, v0, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v5, 0x1

    aput-object v99, v3, v5

    const/4 v7, 0x2

    aput-object v62, v3, v7

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setElements([Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;)V

    new-array v1, v0, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    aput-object v6, v1, v4

    aput-object v99, v1, v5

    aput-object v62, v1, v7

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->setElements([Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x4

    new-array v12, v0, [Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;

    aput-object v6, v12, v4

    aput-object v61, v12, v5

    aput-object v99, v12, v7

    const/4 v0, 0x3

    aput-object v62, v12, v0

    const/4 v13, 0x0

    new-instance v14, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetDoc;

    invoke-direct {v14}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorStylesheetDoc;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/sun/org/apache/xalan/internal/processor/XSLTElementDef;[Lcom/sun/org/apache/xalan/internal/processor/XSLTAttributeDef;Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    return-void
.end method

.method public elementAvailable(Lcom/sun/org/apache/xml/internal/utils/QName;)Z
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->m_availElems:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getElemsAvailable()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/XSLTSchema;->m_availElems:Ljava/util/Hashtable;

    return-object p0
.end method
