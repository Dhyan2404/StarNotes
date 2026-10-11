.class public final Lcom/evernote/client/android/EvernoteSession$EvernoteService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteSession$EvernoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/evernote/client/android/EvernoteSession$EvernoteService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 0

    invoke-static {}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->values()[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public b(I)[Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 0

    new-array p0, p1, [Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteSession$EvernoteService$a;->a(Landroid/os/Parcel;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/evernote/client/android/EvernoteSession$EvernoteService$a;->b(I)[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    move-result-object p0

    return-object p0
.end method
