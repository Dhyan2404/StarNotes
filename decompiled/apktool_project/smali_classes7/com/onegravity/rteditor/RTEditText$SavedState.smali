.class Lcom/onegravity/rteditor/RTEditText$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/RTEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/onegravity/rteditor/RTEditText$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContent:Ljava/lang/String;

.field private mUseRTFormatting:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onegravity/rteditor/RTEditText$SavedState$a;

    invoke-direct {v0}, Lcom/onegravity/rteditor/RTEditText$SavedState$a;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/RTEditText$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mUseRTFormatting:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mContent:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/onegravity/rteditor/RTEditText$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/onegravity/rteditor/RTEditText$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iput-boolean p2, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mUseRTFormatting:Z

    .line 4
    iput-object p3, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mContent:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/onegravity/rteditor/RTEditText$SavedState;)Z
    .locals 0

    invoke-direct {p0}, Lcom/onegravity/rteditor/RTEditText$SavedState;->useRTFormatting()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/onegravity/rteditor/RTEditText$SavedState;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/onegravity/rteditor/RTEditText$SavedState;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getContent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method private useRTFormatting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mUseRTFormatting:Z

    return p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mUseRTFormatting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/onegravity/rteditor/RTEditText$SavedState;->mContent:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
