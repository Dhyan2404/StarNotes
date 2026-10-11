.class public final synthetic Lcom/sunia/HTREnginev2/ihg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

.field public final synthetic f:Lcom/onyx/android/sdk/filepicker/DocumentBean;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;Lcom/onyx/android/sdk/filepicker/DocumentBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ihg;->e:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ihg;->f:Lcom/onyx/android/sdk/filepicker/DocumentBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ihg;->e:Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ihg;->f:Lcom/onyx/android/sdk/filepicker/DocumentBean;

    invoke-static {v0, p0, p1}, Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;->b(Lcom/onyx/android/sdk/filepicker/FilePickerAdapter;Lcom/onyx/android/sdk/filepicker/DocumentBean;Landroid/view/View;)V

    return-void
.end method
