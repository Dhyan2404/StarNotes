.class public final synthetic Lcom/sunia/HTREnginev2/cki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

.field public final synthetic g:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/cki;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/cki;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/cki;->g:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cki;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cki;->f:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cki;->g:Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;

    invoke-static {v0, v1, p0}, Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;->c(Ljava/lang/String;Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;Lcom/onyx/galaxy/note/editor/handler/InkBeautifyEventHandler;)V

    return-void
.end method
