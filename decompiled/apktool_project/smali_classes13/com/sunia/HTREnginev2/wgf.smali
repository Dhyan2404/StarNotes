.class public final synthetic Lcom/sunia/HTREnginev2/wgf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemaEntryImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemaEntryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wgf;->e:Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemaEntryImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wgf;->e:Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemaEntryImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/apache/xmlbeans/XmlAnyURI;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/xb/xsdownload/impl/DownloadedSchemaEntryImpl;->xsetSchemaLocationArray(ILorg/apache/xmlbeans/XmlAnyURI;)V

    return-void
.end method
