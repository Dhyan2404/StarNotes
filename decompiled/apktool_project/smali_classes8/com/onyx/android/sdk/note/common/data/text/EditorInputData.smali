.class public Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/text/EditorInputData$Action;
    }
.end annotation


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/text/EditorInputData$Action;",
            ">;"
        }
    .end annotation
.end field

.field public content:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs addAction(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->actions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->actions:Ljava/util/List;

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData$Action;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData$Action;-><init>()V

    iput-object p1, v0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData$Action;->command:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData$Action;->params:Ljava/util/List;

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/text/EditorInputData;->actions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
