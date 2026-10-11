.class public interface abstract Lcom/google/android/material/sidesheet/Sheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/motion/MaterialBackHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/sidesheet/Sheet$SheetEdge;,
        Lcom/google/android/material/sidesheet/Sheet$StableSheetState;,
        Lcom/google/android/material/sidesheet/Sheet$SheetState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/sunia/HTREnginev2/tnm;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/material/motion/MaterialBackHandler;"
    }
.end annotation


# static fields
.field public static final a0:I = 0x1

.field public static final b0:I = 0x2

.field public static final c0:I = 0x3

.field public static final d0:I = 0x5

.field public static final e0:I = 0x0

.field public static final f0:I = 0x1


# virtual methods
.method public abstract addCallback(Lcom/sunia/HTREnginev2/tnm;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract removeCallback(Lcom/sunia/HTREnginev2/tnm;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public abstract setState(I)V
.end method
