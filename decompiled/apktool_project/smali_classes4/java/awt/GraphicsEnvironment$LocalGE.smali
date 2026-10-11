.class final Ljava/awt/GraphicsEnvironment$LocalGE;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/GraphicsEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalGE"
.end annotation


# static fields
.field static final INSTANCE:Ljava/awt/GraphicsEnvironment;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/awt/GraphicsEnvironment$LocalGE;->createGE()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    sput-object v0, Ljava/awt/GraphicsEnvironment$LocalGE;->INSTANCE:Ljava/awt/GraphicsEnvironment;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGE()Ljava/awt/GraphicsEnvironment;
    .locals 1

    invoke-static {}, Lsun/awt/PlatformGraphicsInfo;->createGE()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-static {}, Ljava/awt/GraphicsEnvironment;->isHeadless()Z

    return-object v0
.end method
