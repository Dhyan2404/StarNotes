.class public final synthetic Lcom/sunia/HTREnginev2/m3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m3f;->e:Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m3f;->e:Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;->l(Lcom/onyx/android/sdk/universal/editor/action/flush/DeleteStashShapeAction;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
