package com.dhyan.starnotes

import android.database.sqlite.SQLiteException
import android.os.Bundle
import android.widget.EditText
import android.widget.ImageButton
import android.widget.Toast
import androidx.activity.addCallback
import androidx.appcompat.app.AppCompatActivity
import com.dhyan.starnotes.data.Note
import com.dhyan.starnotes.data.NoteDatabaseHelper

class NoteEditorActivity : AppCompatActivity() {
    private lateinit var dbHelper: NoteDatabaseHelper
    private lateinit var editTitle: EditText
    private lateinit var editContent: EditText
    private var noteId = -1L
    private var ready = false
    private var lastSaved: Pair<String, String>? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_note_editor)
        dbHelper = NoteDatabaseHelper(this)
        editTitle = findViewById(R.id.editNoteTitle)
        editContent = findViewById(R.id.editNoteContent)
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
                    editContent.setText(note.content)
                }
                lastSaved = note.title to note.content
            }
            ready = true
        } catch (error: SQLiteException) {
            Toast.makeText(this, R.string.load_failed, Toast.LENGTH_LONG).show()
            finish()
            return
        }

        findViewById<ImageButton>(R.id.btnEditorBack).setOnClickListener {
            if (saveNote()) finish()
        }
        findViewById<ImageButton>(R.id.btnEditorSave).setOnClickListener {
            if (saveNote()) {
                if (noteId != -1L) Toast.makeText(this, R.string.note_saved, Toast.LENGTH_SHORT).show()
                finish()
            }
        }
        onBackPressedDispatcher.addCallback(this) {
            if (saveNote()) finish()
        }
    }

    override fun onPause() {
        if (ready) saveNote()
        super.onPause()
    }

    override fun onSaveInstanceState(outState: Bundle) {
        if (ready) saveNote()
        outState.putLong("note_id", noteId)
        super.onSaveInstanceState(outState)
    }

    override fun onDestroy() {
        if (::dbHelper.isInitialized) dbHelper.close()
        super.onDestroy()
    }

    private fun saveNote(): Boolean {
        if (!ready) return false
        val title = editTitle.text.toString().trim()
        val content = editContent.text.toString()
        if (noteId == -1L && title.isBlank() && content.isBlank()) return true

        val finalTitle = title.ifBlank {
            content.trim().take(20).ifBlank { getString(R.string.untitled_note) }
        }
        val snapshot = finalTitle to content
        if (snapshot == lastSaved) return true

        return try {
            val note = Note(id = noteId, title = finalTitle, content = content, type = Note.TYPE_TEXT)
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
