.class public final Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Attributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/AttributeList;


# instance fields
.field private _document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

.field private _element:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xalan/internal/xsltc/DOM;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Attributes;->_element:I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/runtime/Attributes;->_document:Lcom/sun/org/apache/xalan/internal/xsltc/DOM;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method
