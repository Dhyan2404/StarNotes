.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->e()V
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
.field public static final e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getCoverOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->Companion:Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean$Companion;->defaultCover()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;->a(Z)V

    return-void
.end method
