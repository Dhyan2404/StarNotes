.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ServiceC$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

.field public b:Landroid/app/Service;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ServiceC;
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;->b:Landroid/app/Service;

    const-class v1, Landroid/app/Service;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$i;

    iget-object v1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;->b:Landroid/app/Service;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$i;-><init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;Landroid/app/Service;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public b(Landroid/app/Service;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;->b:Landroid/app/Service;

    return-object p0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ServiceComponent;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;->a()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$ServiceC;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic service(Landroid/app/Service;)Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "service"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;->b(Landroid/app/Service;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$h;

    move-result-object p0

    return-object p0
.end method
