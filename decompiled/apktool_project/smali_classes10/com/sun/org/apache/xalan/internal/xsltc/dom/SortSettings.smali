.class final Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _caseOrders:[Ljava/lang/String;

.field private _collators:[Ljava/text/Collator;

.field private _locales:[Ljava/util/Locale;

.field private _sortOrders:[I

.field private _translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

.field private _types:[I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;[I[I[Ljava/util/Locale;[Ljava/text/Collator;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_sortOrders:[I

    iput-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_types:[I

    iput-object p4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_locales:[Ljava/util/Locale;

    iput-object p5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_collators:[Ljava/text/Collator;

    iput-object p6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_caseOrders:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaseOrders()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_caseOrders:[Ljava/lang/String;

    return-object p0
.end method

.method public getCollators()[Ljava/text/Collator;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_collators:[Ljava/text/Collator;

    return-object p0
.end method

.method public getLocales()[Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_locales:[Ljava/util/Locale;

    return-object p0
.end method

.method public getSortOrders()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_sortOrders:[I

    return-object p0
.end method

.method public getTranslet()Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_translet:Lcom/sun/org/apache/xalan/internal/xsltc/runtime/AbstractTranslet;

    return-object p0
.end method

.method public getTypes()[I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SortSettings;->_types:[I

    return-object p0
.end method
