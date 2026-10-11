.class public final Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity;->H()V
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
.field public static final e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;->e:Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    if-lez p1, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getScaleCollectionCount()Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/IntOption;->put(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/ui/NoteScribbleActivity$a;->a(I)V

    return-void
.end method
