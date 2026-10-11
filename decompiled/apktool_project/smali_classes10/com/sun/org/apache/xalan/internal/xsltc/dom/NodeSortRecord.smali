.class public abstract Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPARE_ASCENDING:I = 0x0

.field public static final COMPARE_DESCENDING:I = 0x1

.field public static final COMPARE_NUMERIC:I = 0x1

.field public static final COMPARE_STRING:I

.field private static final DEFAULT_COLLATOR:Ljava/text/Collator;


# instance fields
.field protected _collator:Ljava/text/Collator;

.field protected _collatorFactory:Lcom/sun/org/apache/xalan/internal/xsltc/CollatorFactory;

.field protected _collators:[Ljava/text/Collator;

.field private _dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _last:I

.field protected _locale:Ljava/util/Locale;

.field private _node:I

.field private _scanned:I

.field protected _settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

.field private _values:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->DEFAULT_COLLATOR:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->DEFAULT_COLLATOR:Ljava/text/Collator;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collator:Ljava/text/Collator;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_last:I

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_scanned:I

    .line 6
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    return-void
.end method

.method private final numericValue(I)Ljava/lang/Double;
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_scanned:I

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getTranslet()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    move-result-object v5

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_last:I

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->extractValueFromDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;IILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    :goto_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_values:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_scanned:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_scanned:I

    aput-object v0, p1, v1

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/Double;

    return-object p0
.end method

.method private final stringValue(I)Ljava/lang/Comparable;
    .locals 8

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_scanned:I

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getTranslet()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    move-result-object v5

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getLocales()[Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getCaseOrders()[Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    iget v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_last:I

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->extractValueFromDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;IILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;I)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collators:[Ljava/text/Collator;

    aget-object v2, v2, p1

    aget-object p1, v7, p1

    invoke-static {v1, v0, v2, p1}, Lcom/sun/org/apache/xml/internal/utils/StringComparable;->getComparator(Ljava/lang/String;Ljava/util/Locale;Ljava/text/Collator;Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_values:[Ljava/lang/Object;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_scanned:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_scanned:I

    aput-object p1, v0, v1

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/Comparable;

    return-object p0
.end method


# virtual methods
.method public final compareDocOrder(Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;)I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public compareTo(Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;)I
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getSortOrders()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getSortOrders()[I

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getTypes()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v2, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->numericValue(I)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->numericValue(I)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->stringValue(I)Ljava/lang/Comparable;

    move-result-object v4

    invoke-direct {p1, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->stringValue(I)Ljava/lang/Comparable;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-eqz v4, :cond_2

    aget p0, v0, v3

    if-ne p0, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x0

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    iget p1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public abstract extractValueFromDOM(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;IILcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;I)Ljava/lang/String;
.end method

.method public getCollator()[Ljava/text/Collator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collators:[Ljava/text/Collator;

    return-object p0
.end method

.method public final getNode()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    return p0
.end method

.method public final initialize(IILcom/sun/org/apache/xalan/internal/xsltc/DOM;Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;
        }
    .end annotation

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_dom:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_node:I

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_last:I

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_settings:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;

    invoke-virtual {p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getSortOrders()[I

    move-result-object p1

    array-length p1, p1

    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_values:[Ljava/lang/Object;

    :try_start_0
    const-string p2, "com.sun.org.apache.xalan.internal.xsltc.COLLATOR_FACTORY"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    :try_start_1
    invoke-static {}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xalan/internal/xsltc/CollatorFactory;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collatorFactory:Lcom/sun/org/apache/xalan/internal/xsltc/CollatorFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getLocales()[Ljava/util/Locale;

    move-result-object p2

    new-array p4, p1, [Ljava/text/Collator;

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collators:[Ljava/text/Collator;

    move p4, p3

    :goto_1
    if-ge p4, p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collators:[Ljava/text/Collator;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collatorFactory:Lcom/sun/org/apache/xalan/internal/xsltc/CollatorFactory;

    aget-object v2, p2, p4

    invoke-interface {v1, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/CollatorFactory;->getCollator(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    aput-object v1, v0, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collators:[Ljava/text/Collator;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collator:Ljava/text/Collator;

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/TransletException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    invoke-virtual {p4}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->getCollators()[Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collators:[Ljava/text/Collator;

    aget-object p1, p1, p3

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/NodeSortRecord;->_collator:Ljava/text/Collator;

    :goto_2
    return-void
.end method
