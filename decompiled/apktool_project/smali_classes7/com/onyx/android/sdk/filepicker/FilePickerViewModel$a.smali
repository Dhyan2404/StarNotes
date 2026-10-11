.class public final Lcom/onyx/android/sdk/filepicker/FilePickerViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getDocs(Landroid/content/Context;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Lcom/onyx/android/sdk/filepicker/sort/SortType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel$a;->e:Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;)V
    .locals 1
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/onyx/android/sdk/filepicker/DocumentType;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel$a;->e:Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel;->getFileData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerViewModel$a;->a(Ljava/util/HashMap;)V

    return-void
.end method
