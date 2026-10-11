.class public interface abstract Lorg/apache/poi/convert/WordConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final DOCUMENT_MAX_PARA_SIZE:I = 0x7d0

.field public static final TABLE_INDENT_RATIO:F = 0.2f


# virtual methods
.method public abstract convert()V
.end method

.method public abstract getDocument()Lorg/jsoup/nodes/Document;
.end method

.method public abstract getDocumentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDocumentParaSize()I
.end method

.method public abstract getDocuments()Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/Document;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetaData()Lorg/apache/poi/sl/MetaData;
.end method

.method public abstract getPicturesManager()Lorg/apache/poi/picture/PicturesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getStyleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/convert/WPStyle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTableIndentRatio()F
.end method

.method public abstract getToc()Lorg/apache/poi/convert/WPToc;
.end method

.method public abstract isAbort()Z
.end method

.method public abstract setAbort(Z)V
.end method

.method public abstract setDocumentParaSize(I)V
.end method

.method public abstract setPicturesManager(Lorg/apache/poi/picture/PicturesManager;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/picture/PicturesManager<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setTableIndentRatio(F)V
.end method

.method public abstract write(Ljava/lang/String;Z)V
.end method
