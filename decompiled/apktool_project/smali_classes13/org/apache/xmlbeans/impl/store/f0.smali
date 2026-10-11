.class public final synthetic Lorg/apache/xmlbeans/impl/store/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/XmlOptions;

.field public final synthetic b:Ljava/io/InputStream;

.field public final synthetic c:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/f0;->a:Lorg/apache/xmlbeans/XmlOptions;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/f0;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/store/f0;->c:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public final parse(Lorg/apache/xmlbeans/impl/store/Locale;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/f0;->a:Lorg/apache/xmlbeans/XmlOptions;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/f0;->b:Ljava/io/InputStream;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/f0;->c:Lorg/apache/xmlbeans/SchemaType;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->d(Lorg/apache/xmlbeans/XmlOptions;Ljava/io/InputStream;Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method
