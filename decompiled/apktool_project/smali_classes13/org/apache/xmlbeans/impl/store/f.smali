.class public final synthetic Lorg/apache/xmlbeans/impl/store/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Cursor$WrapIOEx;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/impl/store/Cursor;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lorg/apache/xmlbeans/XmlOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/f;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/f;->b:Ljava/io/File;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/f;->c:Lorg/apache/xmlbeans/XmlOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/f;->a:Lorg/apache/xmlbeans/impl/store/Cursor;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/f;->b:Ljava/io/File;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/f;->c:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, v1, p0}, Lorg/apache/xmlbeans/impl/store/Cursor;->s0(Lorg/apache/xmlbeans/impl/store/Cursor;Ljava/io/File;Lorg/apache/xmlbeans/XmlOptions;)V

    return-void
.end method
