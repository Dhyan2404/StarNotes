.class public Landroidx/constraintlayout/core/motion/key/MotionConstraintSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROTATE_LEFT_OF_PORTRATE:I = 0x4

.field public static final ROTATE_NONE:I = 0x0

.field public static final ROTATE_PORTRATE_OF_LEFT:I = 0x2

.field public static final ROTATE_PORTRATE_OF_RIGHT:I = 0x1

.field public static final ROTATE_RIGHT_OF_PORTRATE:I = 0x3

.field public static final b:Ljava/lang/String; = "XML parser error must be within a Constraint "

.field public static final c:I = -0x1

.field public static final d:I = -0x2

.field public static final e:I = -0x3

.field public static final f:I = -0x4


# instance fields
.field public a:Z

.field public mIdString:Ljava/lang/String;

.field public mRotate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionConstraintSet;->mRotate:I

    return-void
.end method
