.class public final synthetic Lcom/google/android/gms/internal/measurement/zzhv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/measurement/zzhw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzhw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zza:Lcom/google/android/gms/internal/measurement/zzhw;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzhv;->zza:Lcom/google/android/gms/internal/measurement/zzhw;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzhw;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
