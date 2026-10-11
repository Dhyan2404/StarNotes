.class public abstract Lcom/sunia/commonv2/bean/PathAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public action:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public actionType:Lcom/sunia/commonv2/enum2/PathActionType;

.field protected invert:Z


# direct methods
.method public constructor <init>(Lcom/sunia/commonv2/enum2/PathActionType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/commonv2/enum2/PathActionType;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/commonv2/bean/PathAction;->actionType:Lcom/sunia/commonv2/enum2/PathActionType;

    iput-object p2, p0, Lcom/sunia/commonv2/bean/PathAction;->action:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract redo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract undo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdk/RecognizePath;",
            ">;)V"
        }
    .end annotation
.end method
