.class public final synthetic Lcom/sunia/HTREnginev2/ehg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/ui/CommonDialog;

.field public final synthetic f:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ehg;->e:Lcom/onyx/android/sdk/ui/CommonDialog;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ehg;->f:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ehg;->e:Lcom/onyx/android/sdk/ui/CommonDialog;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ehg;->f:Lcom/onyx/android/sdk/filepicker/FilePickerActivity;

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/filepicker/FilePickerActivity;->D(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/filepicker/FilePickerActivity;)V

    return-void
.end method
