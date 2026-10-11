.class public Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DESCENDING:I = 0xa

.field private static NUMBER:I = 0x6


# instance fields
.field private _class:Ljava/lang/Class;

.field private final _className:Ljava/lang/String;

.field protected _collator:Ljava/text/Collator;

.field private final _dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _sortSettings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;Ljava/lang/String;Lcom/sun/org/apache/xalan/internal/xsltc/Translet;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_className:Ljava/lang/String;

    .line 5
    invoke-interface {p3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/Translet;->getAuxiliaryClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_class:Ljava/lang/Class;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_class:Ljava/lang/Class;

    .line 7
    :cond_0
    array-length p1, p4

    .line 8
    new-array v3, p1, [I

    .line 9
    new-array v4, p1, [I

    const/4 p2, 0x0

    move v1, p2

    :goto_0
    if-ge v1, p1, :cond_3

    .line 10
    aget-object v2, p4, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v5, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->DESCENDING:I

    if-ne v2, v5, :cond_1

    .line 11
    aput v0, v3, v1

    .line 12
    :cond_1
    aget-object v2, p5, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v5, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->NUMBER:I

    if-ne v2, v5, :cond_2

    .line 13
    aput v0, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p6, :cond_5

    if-nez p7, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    .line 14
    :cond_5
    :goto_1
    array-length p1, p4

    .line 15
    new-array p4, p1, [Ljava/lang/String;

    move p5, p2

    :goto_2
    if-ge p5, p1, :cond_6

    const-string v0, ""

    .line 16
    aput-object v0, p4, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_6
    move-object p1, p4

    :goto_3
    if-nez p6, :cond_7

    move-object p6, p1

    :cond_7
    if-nez p7, :cond_8

    move-object v7, p1

    goto :goto_4

    :cond_8
    move-object v7, p7

    .line 17
    :goto_4
    array-length p1, p6

    .line 18
    new-array v5, p1, [Ljava/util/Locale;

    .line 19
    new-array v6, p1, [Ljava/text/Collator;

    :goto_5
    if-ge p2, p1, :cond_9

    .line 20
    aget-object p4, p6, p2

    invoke-static {p4}, Lcom/sun/org/apache/xml/internal/utils/LocaleUtility;->langToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p4

    aput-object p4, v5, p2

    .line 21
    invoke-static {p4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p4

    aput-object p4, v6, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 22
    :cond_9
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    move-object v2, p3

    check-cast v2, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;[I[I[Ljava/util/Locale;[Ljava/text/Collator;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_sortSettings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 23
    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private final setLang([Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_className:Ljava/lang/String;

    return-object p0
.end method

.method public makeNodeSortRecord(II)Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/LinkageError;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/SecurityException;,
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecordFactory;->_sortSettings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->initialize(IILcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;)V

    return-object v0
.end method
