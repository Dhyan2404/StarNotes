.class public final synthetic Lcom/sunia/HTREnginev2/zgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemasDocumentImpl$DownloadedSchemasImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemasDocumentImpl$DownloadedSchemasImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/zgf;->e:Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemasDocumentImpl$DownloadedSchemasImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zgf;->e:Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemasDocumentImpl$DownloadedSchemasImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemasDocumentImpl$DownloadedSchemasImpl;->getEntryArray(I)Lorg/apache/xmlbeans/impl/xb/xsdownload/DownloadedSchemaEntry;

    move-result-object p0

    return-object p0
.end method
