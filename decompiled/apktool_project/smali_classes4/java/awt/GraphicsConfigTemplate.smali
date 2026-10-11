.class public abstract Ljava/awt/GraphicsConfigTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PREFERRED:I = 0x2

.field public static final REQUIRED:I = 0x1

.field public static final UNNECESSARY:I = 0x3

.field private static final serialVersionUID:J = -0x6fdfbca61749ddc7L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBestConfiguration([Ljava/awt/GraphicsConfiguration;)Ljava/awt/GraphicsConfiguration;
.end method

.method public abstract isGraphicsConfigSupported(Ljava/awt/GraphicsConfiguration;)Z
.end method
