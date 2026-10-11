.class public final enum Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

.field public static final enum BUSINESS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

.field public static final enum LINKED_NOTEBOOKS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

.field public static final enum PERSONAL_NOTES:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    const-string v1, "PERSONAL_NOTES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->PERSONAL_NOTES:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    new-instance v1, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    const-string v2, "LINKED_NOTEBOOKS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->LINKED_NOTEBOOKS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    new-instance v2, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    const-string v3, "BUSINESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->BUSINESS:Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    filled-new-array {v0, v1, v2}, [Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->$VALUES:[Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;
    .locals 1

    const-class v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    return-object p0
.end method

.method public static values()[Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;
    .locals 1

    sget-object v0, Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->$VALUES:[Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    invoke-virtual {v0}, [Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/client/android/asyncclient/EvernoteSearchHelper$Scope;

    return-object v0
.end method
