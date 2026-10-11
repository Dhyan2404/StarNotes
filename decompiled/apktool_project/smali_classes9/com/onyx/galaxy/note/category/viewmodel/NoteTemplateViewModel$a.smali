.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->checkCoverSelected(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 0

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;->a(Z)Z

    move-result p0

    return p0
.end method
