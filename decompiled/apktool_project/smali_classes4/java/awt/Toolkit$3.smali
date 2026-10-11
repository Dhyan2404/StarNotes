.class final Ljava/awt/Toolkit$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/awt/AWTAccessor$ToolkitAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/Toolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setPlatformResources(Ljava/util/ResourceBundle;)V
    .locals 0

    invoke-static {p1}, Ljava/awt/Toolkit;->access$100(Ljava/util/ResourceBundle;)V

    return-void
.end method
