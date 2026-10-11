.class public final synthetic Lorg/apache/xmlbeans/impl/store/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Saver$TextReader;

.field public final synthetic b:[C


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/j0;->a:Lorg/apache/xmlbeans/impl/store/Saver$TextReader;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/j0;->b:[C

    return-void
.end method


# virtual methods
.method public final process()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/j0;->a:Lorg/apache/xmlbeans/impl/store/Saver$TextReader;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/j0;->b:[C

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextReader;->j(Lorg/apache/xmlbeans/impl/store/Saver$TextReader;[C)I

    move-result p0

    return p0
.end method
