.class public final Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/filepicker/DocumentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDocumentType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocumentType.kt\ncom/onyx/android/sdk/filepicker/DocumentType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n37#3,2:82\n*S KotlinDebug\n*F\n+ 1 DocumentType.kt\ncom/onyx/android/sdk/filepicker/DocumentType$Companion\n*L\n15#1:78\n15#1:79,3\n63#1:82,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005J\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nJ\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nJ\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nJ\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nJ\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;",
        "",
        "()V",
        "allDocumentExtension",
        "",
        "",
        "getDocumentTypeByName",
        "Lcom/onyx/android/sdk/filepicker/DocumentType;",
        "documentName",
        "ofDoc",
        "",
        "ofFont",
        "onlyNote",
        "onlyPdf",
        "partDocumentExtension",
        "sdk-imagepicker_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDocumentType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DocumentType.kt\ncom/onyx/android/sdk/filepicker/DocumentType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,77:1\n1549#2:78\n1620#2,3:79\n37#3,2:82\n*S KotlinDebug\n*F\n+ 1 DocumentType.kt\ncom/onyx/android/sdk/filepicker/DocumentType$Companion\n*L\n15#1:78\n15#1:79,3\n63#1:82,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final allDocumentExtension()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;->partDocumentExtension()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_txt:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_note:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getDocumentTypeByName(Ljava/lang/String;)Lcom/onyx/android/sdk/filepicker/DocumentType;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "documentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;->allDocumentExtension()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "pdf"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "doc/docx"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_word:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_word:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_1
    const-string p0, "note"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_note:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_note:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_2
    const-string p0, "mobi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_mobi:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_mobi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_3
    const-string p0, "epub"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_epub:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_pube:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_4
    const-string p0, "txt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_txt:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_text:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_5
    const-string p0, "ttf"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->font_ttf:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_gif:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :sswitch_6
    const-string p0, "ppt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_ppt:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_ppt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_pdf:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_pdf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :sswitch_8
    const-string p0, "caj"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_caj:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_caj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :sswitch_9
    const-string v0, "ALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    check-cast p0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_pdf:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_pdf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xfd81 -> :sswitch_9
        0x17fcc -> :sswitch_8
        0x1b0f2 -> :sswitch_7
        0x1b274 -> :sswitch_6
        0x1c1e6 -> :sswitch_5
        0x1c270 -> :sswitch_4
        0x2f9c78 -> :sswitch_3
        0x333969 -> :sswitch_2
        0x33aff2 -> :sswitch_1
        0x2f7e70b7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ofDoc()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/filepicker/FilePickerUtils;->INSTANCE:Lcom/onyx/android/sdk/filepicker/FilePickerUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerUtils;->getSupportDocumentType()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/onyx/android/sdk/filepicker/DocumentType;->Companion:Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/filepicker/DocumentType$Companion;->getDocumentTypeByName(Ljava/lang/String;)Lcom/onyx/android/sdk/filepicker/DocumentType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ofFont()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$array;->font_all:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ALL"

    invoke-direct {v0, v4, v2, v3}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$array;->font_ttf:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_gif:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ttf"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final onlyNote()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_note:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_note:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "note"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final onlyPdf()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/filepicker/DocumentType;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_pdf:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/onyx/android/sdk/imagepicker/R$drawable;->ic_file_type_pdf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pdf"

    invoke-direct {v0, v3, v1, v2}, Lcom/onyx/android/sdk/filepicker/DocumentType;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final partDocumentExtension()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_pdf:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_ppt:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_word:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_caj:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_epub:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_mobi:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_fb2:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_html:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget v1, Lcom/onyx/android/sdk/imagepicker/R$array;->doc_bin:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method
