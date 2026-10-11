.class public final Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public applicationContextModule(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applicationContextModule"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/onyx/galaxy/note/NoteApp_HiltComponents$SingletonC;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;-><init>(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$a;)V

    return-object v0
.end method

.method public hwrRecognizerModule(Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hwrRecognizerModule"
        }
    .end annotation

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$Builder;->a:Lcom/onyx/galaxy/note/hilt/recognizer/HwrRecognizerModule;

    return-object p0
.end method
