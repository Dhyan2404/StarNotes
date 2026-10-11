.class public final synthetic Lorg/apache/xmlbeans/impl/store/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/store/Locale$SyncWrapFun;


# instance fields
.field public final synthetic a:Lorg/apache/xmlbeans/SchemaType;

.field public final synthetic b:Lorg/apache/xmlbeans/XmlOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/a0;->a:Lorg/apache/xmlbeans/SchemaType;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/store/a0;->b:Lorg/apache/xmlbeans/XmlOptions;

    return-void
.end method


# virtual methods
.method public final parse(Lorg/apache/xmlbeans/impl/store/Locale;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/a0;->a:Lorg/apache/xmlbeans/SchemaType;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/store/a0;->b:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v0, p0, p1}, Lorg/apache/xmlbeans/impl/store/Locale;->a(Lorg/apache/xmlbeans/SchemaType;Lorg/apache/xmlbeans/XmlOptions;Lorg/apache/xmlbeans/impl/store/Locale;)Lorg/apache/xmlbeans/impl/store/Locale$XmlSaxHandlerImpl;

    move-result-object p0

    return-object p0
.end method
