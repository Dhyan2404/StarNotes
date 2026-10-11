.class public final synthetic Lorg/apache/xmlbeans/impl/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream$IOCall;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;

.field public final synthetic b:I

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/util/a;->a:Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;

    iput p2, p0, Lorg/apache/xmlbeans/impl/util/a;->b:I

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/util/a;->c:[B

    return-void
.end method


# virtual methods
.method public final onebyte([I[I[I)B
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/util/a;->a:Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;

    iget v1, p0, Lorg/apache/xmlbeans/impl/util/a;->b:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/util/a;->c:[B

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;->f(Lorg/apache/xmlbeans/impl/util/LongUTFDataInputStream;I[B[I[I[I)B

    move-result p0

    return p0
.end method
