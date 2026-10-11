.class public final synthetic Lorg/apache/poi/extractor/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/extractor/ExtractorFactory$ProviderMethod;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/extractor/c;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/apache/poi/extractor/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final create(Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/extractor/c;->a:Ljava/io/InputStream;

    iget-object p0, p0, Lorg/apache/poi/extractor/c;->b:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/apache/poi/extractor/ExtractorFactory;->a(Ljava/io/InputStream;Ljava/lang/String;Lorg/apache/poi/extractor/ExtractorProvider;)Lorg/apache/poi/extractor/POITextExtractor;

    move-result-object p0

    return-object p0
.end method
