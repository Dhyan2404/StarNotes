package com.dhyan.starnotes

import android.database.sqlite.SQLiteException
import android.graphics.Color
import android.os.Bundle
import android.widget.EditText
import android.widget.ImageButton
import android.widget.Toast
import androidx.activity.addCallback
import androidx.appcompat.app.AppCompatActivity
import com.dhyan.starnotes.data.Note
import com.dhyan.starnotes.data.NoteDatabaseHelper
import com.dhyan.starnotes.view.DrawingCanvasView

class DrawingActivity : AppCompatActivity() {
    private lateinit var dbHelper: NoteDatabaseHelper
    private lateinit var canvasView: DrawingCanvasView
    private lateinit var editTitle: EditText
    private var noteId = -1L
    private var ready = false
    private var lastSaved: Pair<String, String>? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_drawing)
        dbHelper = NoteDatabaseHelper(this)
        canvasView = findViewById(R.id.drawingCanvasView)
        editTitle = findViewById(R.id.editDrawingTitle)
        noteId = savedInstanceState?.getLong("note_id") ?: intent.getLongExtra("note_id", -1L)

        try {
            if (noteId != -1L) {
                val note = dbHelper.getNote(noteId)
                if (note == null) {
                    Toast.makeText(this, R.string.note_missing, Toast.LENGTH_LONG).show()
                    finish()
                    return
                }
                if (savedInstanceState == null) {
                    editTitle.setText(note.title)
                    canvasView.deserializeDrawing(note.drawingData ?: "[]")
                }
                lastSaved = note.title to (note.drawingData ?: "[]")
            }
            savedInstanceState?.getString("drawing")?.let { canvasView.deserializeDrawing(it) }
            ready = true
        } catch (error: IllegalArgumentException) {
            Toast.makeText(this, R.string.drawing_invalid, Toast.LENGTH_LONG).show()
            ready = true
        } catch (error: SQLiteException) {
            Toast.makeText(this, R.string.load_failed, Toast.LENGTH_LONG).show()
            finish()
            return
        } catch (error: IllegalArgumentException) {
            Toast.makeText(this, R.string.drawing_invalid, Toast.LENGTH_LONG).show()
            finish()
            return
        }

        findViewById<ImageButton>(R.id.btnPenBlack).setOnClickListener { canvasView.setPenColor(Color.BLACK) }
        findViewById<ImageButton>(R.id.btnPenBlue).setOnClickListener { canvasView.setPenColor(Color.rgb(30, 136, 229)) }
        findViewById<ImageButton>(R.id.btnPenRed).setOnClickListener { canvasView.setPenColor(Color.rgb(229, 57, 53)) }
        findViewById<ImageButton>(R.id.btnPenGreen).setOnClickListener { canvasView.setPenColor(Color.rgb(67, 160, 71)) }
        findViewById<ImageButton>(R.id.btnDrawingEraser).setOnClickListener { canvasView.setEraserMode(true) }
        findViewById<ImageButton>(R.id.btnDrawingUndo).setOnClickListener { canvasView.undo() }
        findViewById<ImageButton>(R.id.btnDrawingClear).setOnClickListener {
            androidx.appcompat.app.AlertDialog.Builder(this)
                .setMessage(R.string.clear_drawing_confirmation)
                .setPositiveButton(R.string.clear_drawing) { _, _ -> canvasView.clearCanvas() }
                .setNegativeButton(android.R.string.cancel, null)
                .show()
        }
        findViewById<ImageButton>(R.id.btnDrawingBack).setOnClickListener {
            if (saveDrawing()) finish()
        }
        findViewById<ImageButton>(R.id.btnDrawingSave).setOnClickListener {
            if (saveDrawing()) {
                if (noteId != -1L) Toast.makeText(this, R.string.note_saved, Toast.LENGTH_SHORT).show()
                finish()
            }
        }
        onBackPressedDispatcher.addCallback(this) {
            if (saveDrawing()) finish()
        }
    }

    override fun onPause() {
        if (ready) saveDrawing()
        super.onPause()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        if (ready) {
            saveDrawing()
            outState.putString("drawing", canvasView.serializeDrawing())
        }
        outState.putLong("note_id", noteId)
        super.onSaveInstanceState(outState)
    }

    override fun onDestroy() {
        if (::dbHelper.isInitialized) dbHelper.close()
        super.onDestroy()
    }

    private fun saveDrawing(): Boolean {
        if (!ready) return false
        val title = editTitle.text.toString().trim()
        if (noteId == -1L && title.isBlank() && canvasView.isEmpty()) return true
        val finalTitle = title.ifBlank { getString(R.string.handwritten_note) }
        val drawing = canvasView.serializeDrawing()
        val snapshot = finalTitle to drawing
        if (snapshot == lastSaved) return true

        return try {
            val note = Note(id = noteId, title = finalTitle, content = "",
                type = Note.TYPE_DRAWING, drawingData = drawing)
            if (noteId == -1L) noteId = dbHelper.insertNote(note)
            else dbHelper.updateNote(note)
            lastSaved = snapshot
            true
        } catch (error: SQLiteException) {
            Toast.makeText(this, R.string.save_failed, Toast.LENGTH_LONG).show()
            false
        }
    }
}
