.class Ljava/awt/color/ICC_Profile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/cmm/ProfileActivator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/color/ICC_Profile;-><init>(Lsun/java2d/cmm/ProfileDeferralInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/awt/color/ICC_Profile;


# direct methods
.method public constructor <init>(Ljava/awt/color/ICC_Profile;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/color/ICC_Profile$1;->this$0:Ljava/awt/color/ICC_Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/color/ProfileDataException;
        }
    .end annotation

    iget-object p0, p0, Ljava/awt/color/ICC_Profile$1;->this$0:Ljava/awt/color/ICC_Profile;

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->activateDeferredProfile()V

    return-void
.end method
