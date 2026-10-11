.class public final enum Lcom/evernote/client/android/EvernoteSession$EvernoteService;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvernoteService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evernote/client/android/EvernoteSession$EvernoteService;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/evernote/client/android/EvernoteSession$EvernoteService;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field public static final enum SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    const-string v1, "SANDBOX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    new-instance v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    const-string v2, "PRODUCTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    filled-new-array {v0, v1}, [Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object v0

    sput-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->$VALUES:[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    new-instance v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService$a;

    invoke-direct {v0}, Lcom/evernote/client/android/EvernoteSession$EvernoteService$a;-><init>()V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 1

    const-class v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object p0
.end method

.method public static values()[Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 1

    sget-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->$VALUES:[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-virtual {v0}, [Lcom/evernote/client/android/EvernoteSession$EvernoteService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
