.class final Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction$create$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/FontUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils;

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->access$getFilePath$p(Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->loadTypefaceFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->access$getFilePath$p(Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/FontUtils;->loadFontInfo(Ljava/io/File;)Lcom/onyx/android/sdk/base/data/font/FontInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/fonts/LoadFontTypefaceAction;->setFontInfo(Lcom/onyx/android/sdk/base/data/font/FontInfo;)V

    return-void
.end method
