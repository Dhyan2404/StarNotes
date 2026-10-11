.class public final synthetic Lorg/apache/xmlbeans/impl/store/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Saver$SyncWrapFun;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/k0;->a:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    return-void
.end method


# virtual methods
.method public final process()I
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/k0;->a:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->read()I

    move-result p0

    return p0
.end method
