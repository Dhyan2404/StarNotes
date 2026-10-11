.class public final Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2;->invoke(Lcom/onyx/android/sdk/ui/NameEditDialog;Ljava/lang/String;)V
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


# static fields
.field public static final e:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;->e:Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/android/sdk/universal/R$string;->audio_name_duplicated_tips:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/action/audio/ShowRenameAudioNameDialogAction$create$2$a;->a(Z)V

    return-void
.end method
