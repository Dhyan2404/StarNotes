.class public final synthetic Lcom/sunia/HTREnginev2/xek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xek;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/xek;->e:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/dialog/OcrTextConvertDialog;->u0(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method
