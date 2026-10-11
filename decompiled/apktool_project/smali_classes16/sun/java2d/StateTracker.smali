.class public interface abstract Lsun/java2d/StateTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALWAYS_CURRENT:Lsun/java2d/StateTracker;

.field public static final NEVER_CURRENT:Lsun/java2d/StateTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/java2d/StateTracker$1;

    invoke-direct {v0}, Lsun/java2d/StateTracker$1;-><init>()V

    sput-object v0, Lsun/java2d/StateTracker;->ALWAYS_CURRENT:Lsun/java2d/StateTracker;

    new-instance v0, Lsun/java2d/StateTracker$2;

    invoke-direct {v0}, Lsun/java2d/StateTracker$2;-><init>()V

    sput-object v0, Lsun/java2d/StateTracker;->NEVER_CURRENT:Lsun/java2d/StateTracker;

    return-void
.end method


# virtual methods
.method public abstract isCurrent()Z
.end method
