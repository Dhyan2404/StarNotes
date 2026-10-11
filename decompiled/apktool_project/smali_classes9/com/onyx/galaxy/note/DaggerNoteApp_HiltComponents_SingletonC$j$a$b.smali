.class public Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;->get()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a$b;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;

    iget-object p0, p0, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a$b;->a:Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;

    invoke-static {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;->a(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j$a;)Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;->b(Lcom/onyx/galaxy/note/DaggerNoteApp_HiltComponents_SingletonC$j;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method
