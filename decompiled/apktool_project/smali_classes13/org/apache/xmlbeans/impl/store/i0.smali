.class public final synthetic Lorg/apache/xmlbeans/impl/store/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Saver$TextReader;

.field public final synthetic b:[C

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[CII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/i0;->a:Lorg/apache/xmlbeans/impl/store/Saver$TextReader;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/i0;->b:[C

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/i0;->c:I

    iput p4, p0, Lorg/apache/xmlbeans/impl/store/i0;->d:I

    return-void
.end method


# virtual methods
.method public final process()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/i0;->a:Lorg/apache/xmlbeans/impl/store/Saver$TextReader;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/i0;->b:[C

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/i0;->c:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/i0;->d:I

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->f(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[CII)I

    move-result p0

    return p0
.end method
