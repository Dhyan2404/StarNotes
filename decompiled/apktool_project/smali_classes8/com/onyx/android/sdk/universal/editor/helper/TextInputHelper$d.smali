.class public final Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->s(Ljava/lang/String;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextInputHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper$loadFont$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,765:1\n1855#2,2:766\n*S KotlinDebug\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper$loadFont$1\n*L\n681#1:766,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextInputHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper$loadFont$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,765:1\n1855#2,2:766\n*S KotlinDebug\n*F\n+ 1 TextInputHelper.kt\ncom/onyx/android/sdk/universal/editor/helper/TextInputHelper$loadFont$1\n*L\n681#1:766,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$d;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$d;->e:Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;->access$setEditorFontInfo(Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper;Lcom/onyx/android/sdk/base/data/font/FontInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/helper/TextInputHelper$d;->a(Ljava/util/List;)V

    return-void
.end method
