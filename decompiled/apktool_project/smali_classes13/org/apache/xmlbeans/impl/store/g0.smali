.class public final synthetic Lorg/apache/xmlbeans/impl/store/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;

.field public final synthetic b:[B

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/g0;->a:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/g0;->b:[B

    iput p3, p0, Lorg/apache/xmlbeans/impl/store/g0;->c:I

    iput p4, p0, Lorg/apache/xmlbeans/impl/store/g0;->d:I

    return-void
.end method


# virtual methods
.method public final process()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/g0;->a:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/g0;->b:[B

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/g0;->c:I

    iget p0, p0, Lorg/apache/xmlbeans/impl/store/g0;->d:I

    invoke-static {v0, v1, v2, p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->f(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;[BII)I

    move-result p0

    return p0
.end method
