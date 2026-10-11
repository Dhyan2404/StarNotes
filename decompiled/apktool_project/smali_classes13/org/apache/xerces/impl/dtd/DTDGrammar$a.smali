.class public Lorg/apache/xerces/impl/dtd/DTDGrammar$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/dtd/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:[Lorg/apache/xerces/xni/QName;

.field public c:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->a:I

    const/4 v0, 0x2

    new-array v1, v0, [Lorg/apache/xerces/xni/QName;

    iput-object v1, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->b:[Lorg/apache/xerces/xni/QName;

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xerces/impl/dtd/DTDGrammar$a;->c:[I

    return-void
.end method
