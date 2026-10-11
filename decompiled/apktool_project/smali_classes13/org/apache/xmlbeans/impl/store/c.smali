.class public final synthetic Lorg/apache/xmlbeans/impl/store/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/c;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/c;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/c;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/c;->b:Ljava/io/File;

    invoke-static {v0, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->W0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;)V

    return-void
.end method
