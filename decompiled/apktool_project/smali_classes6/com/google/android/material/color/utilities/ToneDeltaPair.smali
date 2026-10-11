.class public final Lcom/google/android/material/color/utilities/ToneDeltaPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/color/utilities/DynamicColor;

.field public final b:Lcom/google/android/material/color/utilities/DynamicColor;

.field public final c:D

.field public final d:Lcom/google/android/material/color/utilities/TonePolarity;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V
    .locals 0
    .param p1    # Lcom/google/android/material/color/utilities/DynamicColor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/color/utilities/DynamicColor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/color/utilities/TonePolarity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->a:Lcom/google/android/material/color/utilities/DynamicColor;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->b:Lcom/google/android/material/color/utilities/DynamicColor;

    iput-wide p3, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->c:D

    iput-object p5, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->d:Lcom/google/android/material/color/utilities/TonePolarity;

    iput-boolean p6, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->e:Z

    return-void
.end method


# virtual methods
.method public getDelta()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->c:D

    return-wide v0
.end method

.method public getPolarity()Lcom/google/android/material/color/utilities/TonePolarity;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->d:Lcom/google/android/material/color/utilities/TonePolarity;

    return-object p0
.end method

.method public getRoleA()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->a:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0
.end method

.method public getRoleB()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->b:Lcom/google/android/material/color/utilities/DynamicColor;

    return-object p0
.end method

.method public getStayTogether()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/ToneDeltaPair;->e:Z

    return p0
.end method
